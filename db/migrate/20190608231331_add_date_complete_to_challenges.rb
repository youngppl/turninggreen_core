class AddDateCompleteToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :date_complete, :date
  end
end
