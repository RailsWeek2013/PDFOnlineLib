class AddImageToPdfFiles < ActiveRecord::Migration
  def change
    add_column :pdf_files, :image, :string
  end
end
