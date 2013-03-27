class AddFieldsToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :height, :string
    add_column :leads, :weight, :string
    add_column :leads, :refered_by, :string
    add_column :leads, :how_did_you_knew_about_us, :string
    add_column :leads, :smoke, :boolean
    add_column :leads, :prior_procedures, :string
    add_column :leads, :current_medication, :string
    add_column :leads, :diagnosed_diseases, :string
    add_column :leads, :require_transportation, :boolean
    add_column :leads, :require_recuperation_home, :boolean
    add_column :leads, :estimated_date_for_surgery, :date
  end
end
