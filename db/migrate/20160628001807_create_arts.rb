class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.boolean :dancing
      t.boolean :painting
      t.boolean :photography
      t.boolean :singing
      t.boolean :theatre
      t.boolean :writing

      t.timestamps null: false
    end
  end
end
