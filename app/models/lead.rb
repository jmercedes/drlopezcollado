class Lead < ActiveRecord::Base
  attr_accessible :image,
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
end
