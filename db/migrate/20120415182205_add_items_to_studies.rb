class AddItemsToStudies < ActiveRecord::Migration
  def change
    add_column :studies, :status, :string
    add_column :studies, :study_date, :string
  end
end
