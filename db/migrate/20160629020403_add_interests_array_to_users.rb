class AddInterestsArrayToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :interests, :text, array: true, default: []
  end
end
