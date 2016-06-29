class AddInterestsToMatch < ActiveRecord::Migration
  def change
  	add_column :matches, :interests, :text, array: true, default: []
  end
end
