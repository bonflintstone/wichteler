class AddsGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :name
    end

    add_reference :participants, :game, foreign_key: true
  end
end
