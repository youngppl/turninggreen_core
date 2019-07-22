class ChangeDateCompleteForChallenges < ActiveRecord::Migration[5.2]
  def change
    change_column :challenges, :date_complete, :datetime
  end
end
