class ChangeNotificationDefaultForUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :notifications, :string, default: "Every other day"
  end
end
