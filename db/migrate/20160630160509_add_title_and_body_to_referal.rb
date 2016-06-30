class AddTitleAndBodyToReferal < ActiveRecord::Migration
  def change
    add_column :referals, :title, :string
    add_column :referals, :body, :text
  end
end
