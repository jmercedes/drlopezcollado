class AddLeadIdToProcedure < ActiveRecord::Migration
  def change
    add_column :procedures, :lead_id, :integer
  end
end
