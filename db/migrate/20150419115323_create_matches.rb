class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :team1id
      t.integer :team2id
      t.datetime :timestamp

      t.timestamps
    end
  end
end
