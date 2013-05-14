class Lead < ActiveRecord::Base
  attr_accessible :image,
                  :procedures_attributes,
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
                  :refered_by,
                  :image2,
                  :image3,
                  :image4,
                  :smoke,
                  :require_recuperation_home,
                  :require_transportation        
  
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
   
   #validates :twitter,
   #          :format => { :with => /@([A-Za-z0-9_]{1,15})/,
   #          :message => "The Twitter id is incorrect" }
   
   validates :email,
             :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
             :message => :invalid_email }

   validates :phone, :mobile, :numericality => true
  
  def self.crm(zoho)
   RubyZoho::Crm::Lead.new(:last_name=>zoho.last_name,:phone=>zoho.phone,:email=>zoho.email,:mobile=>zoho.mobile,:state=>zoho.state,:zip_code=>zoho.zipcode,:country=>zoho.country,:recovery=>zoho.require_recuperation_home,:transporte =>zoho.require_transportation).save
    
  end
  
end
