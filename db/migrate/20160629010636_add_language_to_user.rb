class AddLanguageToUser < ActiveRecord::Migration
  def change
  	change_column :users, :languages, 'text[] USING CAST(languages AS text[])', default: []
  end
end
