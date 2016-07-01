class AddColumnsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :occupation, :string
  	add_column :users, :origin_country, :string
  	add_column :users, :facebook_url, :string
  	add_column :users, :twitter_url, :string
  	add_column :users, :snapchat_url, :string
  	add_column :users, :description, :text
  	add_column :users, :why_am_i_here, :text
  	add_column :users, :hobbies, :text
  	add_column :users, :image, :string
  end
end
