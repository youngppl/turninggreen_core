class AddLastLoggedToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :last_logged, :datetime
  end
end
