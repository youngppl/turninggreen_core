class AddNotificationViewedToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :notification_viewed, :boolean, default: false
  end
end
