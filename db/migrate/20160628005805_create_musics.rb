class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.boolean :pop
      t.boolean :rock
      t.boolean :country
      t.boolean :classical
      t.boolean :jazz
      t.boolean :blues
      t.boolean :folk
      t.boolean :randb
      t.boolean :alternative
      t.boolean :dance
      t.boolean :latin
      t.boolean :HipHop_Rap

      t.timestamps null: false
    end
  end
end
