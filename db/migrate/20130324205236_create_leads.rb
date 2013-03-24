class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      
      #Pacient information
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :mobile
      t.string :twitter
      t.string :skype
      t.string :language
      t.text   :comments
      
      #procedure
      t.integer :procedure_id
      
      #address
      t.string :address
      t.string :address2
      t.string :address3
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode

      t.timestamps
    end
  end
end
