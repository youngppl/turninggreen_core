class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.belongs_to :user, index: true
      t.string :challenge_name
      t.string :theme
      t.integer :length_of_challenge
      t.timestamps
    end
  end
end
