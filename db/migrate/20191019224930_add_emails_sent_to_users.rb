class AddEmailsSentToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :emails_sent, :string, array: true, default: []
  end
end
