class CreateProgressLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :progress_logs do |t|
      t.integer :metric
      t.string :metric_unit
      t.timestamps
    end
  end
end
