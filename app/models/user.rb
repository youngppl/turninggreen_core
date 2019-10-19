class User < ApplicationRecord
  include UsersHelper

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  validate :validate_state
  validate :validate_age
  has_one_attached :profile_pic
  has_many :challenges

  # points

  def add_points(pts)
    update(points: points + pts)
    if points >= level_ranges[level + 1]
      update(level: level + 1)
    end
  end

  def level_progress(points_to_add = nil)
    # points_to_add is for projected points if you want progress before points is actually updated in the modal
    @start = level_ranges[level]
    @end = level_ranges[level + 1]
    if points_to_add
      @current = points + points_to_add
    else
      @current = points
    end
    ((@current - @start)/(@end - @start).to_f)*100
  end

  # saving/editing

  def update_with_password(params={})
    if !params[:current_password].nil? && !self.valid_password?(params[:current_password])
      self.errors[:current_password] << "The current password is invalid"
      return
    end
    current_password = params.delete(:current_password)

    if params[:password].blank?
      params.delete(:password)
      params.delete(:password_confirmation) if params[:password_confirmation].blank?
    end
    result = update_attributes(params)
    clean_up_passwords
    result
  end

  # instead of deleting, indicate the user requested a delete & timestamp it
  def soft_delete
    update_attribute(:deleted_at, Time.current)
    skip_reconfirmation!
    update(email: "deleted#{id}@account.sosad")
  end

  # ensure user account is active
  def active_for_authentication?
    super && !deleted_at
  end

  # provide a custom message for a deleted account
  def inactive_message
    !deleted_at ? super : :deleted_account
  end

  private

  def validate_state
    if (country != 'United States' and state != 'NO') or (country == 'United States' and state == 'NO')
      errors.add(:state, '(for USA only) and country do not match')
    end
  end

  def validate_age
    if (!birthday.nil?) and (birthday > 13.years.ago)
      errors.add(:birthday, 'You must be at least 13 years old to register')
    end
  end

end
