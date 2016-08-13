class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.string "name", default: "NyanCat"
      t.integer "player_score"
      t.timestamps
    end
  end
end
