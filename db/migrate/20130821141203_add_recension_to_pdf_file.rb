class AddRecensionToPdfFile < ActiveRecord::Migration
  def change
    add_column :pdf_files, :recension, :text
  end
end
