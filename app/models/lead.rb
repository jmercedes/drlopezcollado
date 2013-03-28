class Lead < ActiveRecord::Base
  attr_accessible :image, :procedures_attributes,
                  :first_name,
                  :last_name,
                  :email,
                  :phone,
                  :mobile,
                  :twitter,
                  :skype,
                  :language,
                  :comments,
                  :procedure_id,
                  :address,
                  :address2,
                  :address3,
                  :city,
                  :state,
                  :country,
                  :zipcode
                          
  
  mount_uploader :image, ImageUploader
  
  has_many :procedures
  accepts_nested_attributes_for :procedures
  
end
