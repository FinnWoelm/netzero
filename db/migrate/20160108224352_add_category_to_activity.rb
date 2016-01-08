class AddCategoryToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :category_id, :integer, index: true, foreign_key: true
  end
end
