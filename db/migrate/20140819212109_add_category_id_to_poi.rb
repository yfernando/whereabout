class AddCategoryIdToPoi < ActiveRecord::Migration
  def change
    add_column :pois, :category_id, :integer
  end
end
