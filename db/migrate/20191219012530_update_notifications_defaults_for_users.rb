class UpdateNotificationsDefaultsForUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :notifications_content, :string, array: true, default: ['reminders', 'check-in', 'newsletter']
  end
end
