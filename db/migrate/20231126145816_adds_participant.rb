class AddsParticipant < ActiveRecord::Migration[7.1]
  def change
    create_table :participants do |t|
      t.string :name

      t.references :receiver, foreign_key: { to_table: :participants }
    end
  end
end
