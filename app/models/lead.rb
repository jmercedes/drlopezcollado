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
                  :zipcode,
                  :height,
                  :weight,
                  :prior_procedures,
                  :current_medication,
                  :diagnosed_diseases,
                  :estimated_date_for_surgery,
                  :how_did_you_knew_about_us,
                  :refered_by
                          
  
  mount_uploader :image, ImageUploader
  
  has_many :procedures
  accepts_nested_attributes_for :procedures
  
  #validations
  
  validates :first_name,
            :last_name,
            :email,
            :phone,
            :language,
            :address,
            :city,
            :state,
            :country,
            :zipcode,
            :presence => true
   
   validates :twitter,
             :format => { :with => /@([A-Za-z0-9_]{1,15})/,
             :message => "The Twitter id is incorrect" }
   
   validates :email,
             :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
             :message => :invalid_email }

   validates :phone, :mobile, :numericality => true
  
  
  
end
