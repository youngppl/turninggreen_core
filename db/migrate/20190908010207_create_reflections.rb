class CreateReflections < ActiveRecord::Migration[5.2]
  def change
    create_table :reflections do |t|
      t.belongs_to :challenge
      t.text :reflection
      t.text :caption
      t.boolean :permission
      t.timestamps
    end
  end
end
