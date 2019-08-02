class AddDeactivationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :deleted_at, :datetime
    add_column :users, :deactivation_reasons, :text, array: true, default: []
  end
end
