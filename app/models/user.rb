class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  validate :validate_state
  validate :validate_age
  has_one_attached :profile_pic
  has_many :challenges
  def update_with_password(params={})
    current_password = params.delete(:current_password)

    if params[:password].blank?
      params.delete(:password)
      params.delete(:password_confirmation) if params[:password_confirmation].blank?
    end
    result = update_attributes(params)
    clean_up_passwords
    result
  end

  private

  def validate_state
    if (country != 'United States' and state != 'NO') or (country == 'United States' and state == 'NO')
      errors.add(:state, 'and country do not match')
    end
  end

  def validate_age
    if (!birthday.nil?) and (birthday > 13.years.ago)
      errors.add(:base, 'You must be at least 13 years of age') 
    end
  end

end
