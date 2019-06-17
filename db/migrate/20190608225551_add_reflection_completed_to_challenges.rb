class AddReflectionCompletedToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :reflection_completed, :boolean, default: false
  end
end
