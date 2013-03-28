class AddOtherProcedureToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :other_procedure, :string
  end
end
