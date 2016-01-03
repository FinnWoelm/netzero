class ReductionOptionsAddDescription < ActiveRecord::Migration
  def change
    add_column :reduction_options, :description, :string
  end
end
