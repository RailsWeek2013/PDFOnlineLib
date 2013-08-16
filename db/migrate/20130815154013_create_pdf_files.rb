class CreatePdfFiles < ActiveRecord::Migration
  def change
    create_table :pdf_files do |t|
      t.string :title
      t.string :pdf

      t.timestamps
    end
  end
end
