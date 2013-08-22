class DeleteRecensionsFromPdfFiles < ActiveRecord::Migration
  def change
  	remove_column :pdf_files, :recension, :text
  end
end
