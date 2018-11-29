class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :birthday, :date
    add_column :users, :referral, :string
  end
end
