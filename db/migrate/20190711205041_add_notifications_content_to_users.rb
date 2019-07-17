class AddNotificationsContentToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :notifications_content, :text, array: true, default: ["check-in"]
  end
end
