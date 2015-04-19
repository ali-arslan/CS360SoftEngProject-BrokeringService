class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.integer :userid
      t.integer :teamid
      t.integer :value
      t.datetime :timestamp

      t.timestamps
    end
  end
end
