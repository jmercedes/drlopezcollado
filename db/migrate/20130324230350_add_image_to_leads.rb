class AddImageToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :image, :string
  end
end
