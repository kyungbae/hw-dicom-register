class Study < ActiveRecord::Base
  attr_accessible :name, :dicom_file, :status, :study_date
  mount_uploader :dicom_file
  
  validates :dicom_file, :presence => true
  
  before_save :extract_data_from_dicom
  
  require 'dicom'
  
  def extract_data_from_dicom
    obj = DICOM::DObject.read('public' + dicom_file.to_s)
    if obj.read?
      
      self.name = obj.value("0010,0010")
      #self.study_date = obj.value("0008,0020")
      self.status = 'DICOM File'
    else
      self.name = 'Non-DICOM File'
      self.status = 'Non-DICOM File'
      self.study_date = 'Non-DICOM File'
      self.errors[:base] << 'Non-DICOM File'
    end
  end

end
