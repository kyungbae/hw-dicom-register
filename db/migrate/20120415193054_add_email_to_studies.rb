class AddEmailToStudies < ActiveRecord::Migration
  def change
    add_column :studies, :email, :string
  end
end
