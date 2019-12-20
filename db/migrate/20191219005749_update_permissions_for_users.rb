class UpdatePermissionsForUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :permissions, :string, array: true, default: ['challenges', 'location']
  end
end
