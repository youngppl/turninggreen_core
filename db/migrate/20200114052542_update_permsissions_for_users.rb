class UpdatePermsissionsForUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :permissions, :string, default: ["location"], array: true
    User.update_all(permissions: ["location"])
  end
end
