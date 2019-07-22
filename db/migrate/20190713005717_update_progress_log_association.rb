class UpdateProgressLogAssociation < ActiveRecord::Migration[5.2]
  def change
    add_reference :progress_logs, :challenges, index: true
  end
end
