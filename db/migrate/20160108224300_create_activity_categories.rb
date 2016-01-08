class CreateActivityCategories < ActiveRecord::Migration
  def change
    create_table :activity_categories do |t|
      t.string :title
      t.attachment :image

      t.timestamps null: false
    end
  end
end
