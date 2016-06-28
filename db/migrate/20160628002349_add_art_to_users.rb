class AddArtToUsers < ActiveRecord::Migration
  def change
  	add_reference :users, :art, index: true, foreign_key: true
  end
end
