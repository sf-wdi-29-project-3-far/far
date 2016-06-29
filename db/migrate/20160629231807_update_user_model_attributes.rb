class UpdateUserModelAttributes < ActiveRecord::Migration
  def change
  	add_column :users, :current_country, :string
  	remove_column :users, :native_language, :string
  end
end
