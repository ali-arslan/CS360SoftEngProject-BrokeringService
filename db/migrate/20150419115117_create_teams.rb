class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :id
      t.string :name
      t.string :type
      t.float :odd

      t.timestamps
    end
  end
end
