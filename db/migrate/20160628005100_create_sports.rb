class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.boolean :soccer
      t.boolean :football
      t.boolean :basketball
      t.boolean :tennis
      t.boolean :rugby
      t.boolean :F1
      t.boolean :boxing
      t.boolean :golf
      t.boolean :baseball

      t.timestamps null: false
    end
  end
end
