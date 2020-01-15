class AddTutorialViewedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :tutorial_viewed, :boolean, default: false
  end
end
