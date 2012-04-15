class Study < ActiveRecord::Base
  attr_accessible :name, :dicom_file
  mount_uploader :dicom_file
  
  before_save :extract_data_from_dicom
  
  require 'dicom'
  
  def extract_data_from_dicom
    obj = DICOM::DObject.read('public' + dicom_file.to_s)
    if obj.read?
      logger.info('Yeah!')
      self.name = obj.value("0010", "0010")
      #self.name = 'Yes baby'
    else
      logger.info('Bite me')

      #self.name = 'no way'
    end
  end

end
