class AddDicomFileToStudies < ActiveRecord::Migration
  def change
    add_column :studies, :dicom_file, :string
  end
end
