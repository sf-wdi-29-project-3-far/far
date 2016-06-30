class CreateReferals < ActiveRecord::Migration
  def change
    create_table :referals do |t|
      t.integer :referer_id
      t.integer :referee_id

      t.timestamps null: false
    end
  end
end
