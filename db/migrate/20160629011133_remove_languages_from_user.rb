class RemoveLanguagesFromUser < ActiveRecord::Migration
  def change
  	remove_column :users, :languages, :text
  end
end
