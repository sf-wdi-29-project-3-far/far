class AddArrayAttributesToConversation < ActiveRecord::Migration
  def change
  	add_column :conversations, :interests, :text, array: true, default: []
  end
end
