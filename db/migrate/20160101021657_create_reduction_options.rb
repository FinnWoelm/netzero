class CreateReductionOptions < ActiveRecord::Migration
  def change
    create_table :reduction_options do |t|
      t.string :title
      t.string :carbon_impact

      t.timestamps null: false
    end
  end
end
