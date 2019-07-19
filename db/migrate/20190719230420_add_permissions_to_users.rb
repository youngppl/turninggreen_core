class AddPermissionsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :permissions, :text, array: true
  end
end
