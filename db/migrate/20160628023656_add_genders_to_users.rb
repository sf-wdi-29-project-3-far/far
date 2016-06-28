class AddGendersToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :male, :boolean
  	add_column :users, :female, :boolean
  	add_column :users, :other_gender, :boolean
  end
end
