class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.boolean :thai
      t.boolean :italian
      t.boolean :mexican
      t.boolean :japanese
      t.boolean :chinese
      t.boolean :greek
      t.boolean :spanish
      t.boolean :indian
      t.boolean :korean

      t.timestamps null: false
    end
  end
end
