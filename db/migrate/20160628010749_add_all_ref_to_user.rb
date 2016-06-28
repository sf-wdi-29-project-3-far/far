class AddAllRefToUser < ActiveRecord::Migration
  def change
  	add_reference :users, :music, index: true, foreign_key: true
  	add_reference :users, :food, index: true, foreign_key: true
  	add_reference :users, :sport, index: true, foreign_key: true
  end
end
