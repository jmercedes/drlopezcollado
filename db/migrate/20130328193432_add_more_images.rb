class AddMoreImages < ActiveRecord::Migration
  def change
    add_column :leads, :image2, :string
    add_column :leads, :image3, :string
    add_column :leads, :image4, :string
  end
end
