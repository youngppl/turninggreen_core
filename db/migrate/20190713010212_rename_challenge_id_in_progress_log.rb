class RenameChallengeIdInProgressLog < ActiveRecord::Migration[5.2]
  def change
    rename_column :progress_logs, :challenges_id, :challenge_id
  end
end
