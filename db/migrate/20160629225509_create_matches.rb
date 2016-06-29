class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :origin_country
      t.string :current_country
      t.integer :age
      t.boolean :male
      t.boolean :female
      t.boolean :other_gender
      t.string :language

      t.timestamps null: false
    end
  end
end
