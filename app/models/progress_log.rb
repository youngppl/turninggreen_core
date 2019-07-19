class ProgressLog < ApplicationRecord
  belongs_to :challenge
  after_create :update_challenge

  def update_challenge
    Challenge.where(id: challenge_id).update(last_logged: created_at)
  end
end
