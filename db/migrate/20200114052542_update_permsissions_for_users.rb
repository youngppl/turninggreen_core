class UpdatePermsissionsForUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :permissions, :string, array: true, default: ['location']
    User.update_all(:permissions => ["location"])
  end
end
