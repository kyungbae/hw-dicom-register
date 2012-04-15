class Study < ActiveRecord::Base
  attr_accessible :name, :dicom_file, :status, :study_date, :email
  mount_uploader :dicom_file
  
  validates :dicom_file, :presence => true
  validates :email, :presence => true, 
    :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
    :message => 'Check the email address again.'
    
  
  before_save :extract_data_from_dicom
  
  require 'dicom'
  
  def extract_data_from_dicom
    obj = DICOM::DObject.read('public' + dicom_file.to_s)
    if obj.read?
      
      self.name = obj.value("0010,0010")
      self.study_date = obj.value("0008,0020").to_s
      self.status = 'DICOM File'
    else
      self.name = 'N/A'
      self.status = 'Non-DICOM File'
      self.study_date = 'N/A'

    end
  end

end
