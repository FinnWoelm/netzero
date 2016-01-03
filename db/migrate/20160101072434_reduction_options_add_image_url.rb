class ReductionOptionsAddImageUrl < ActiveRecord::Migration
  def change
    add_column :reduction_options, :image_url, :string
  end
end
