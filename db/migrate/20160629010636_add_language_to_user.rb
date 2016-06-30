class AddLanguageToUser < ActiveRecord::Migration
  def change
  	add_column :users, :languages, :text, array: true, default: []
  end
end
