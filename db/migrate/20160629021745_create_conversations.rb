class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.string :language
      t.string :origin_country
      t.integer :age
      t.boolean :male
      t.boolean :female
      t.boolean :other_gender

      t.timestamps null: false
    end
  end
end
