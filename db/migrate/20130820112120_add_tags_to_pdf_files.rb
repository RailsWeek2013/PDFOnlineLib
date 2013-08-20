class AddTagsToPdfFiles < ActiveRecord::Migration
  def change
    add_column :pdf_files, :tags, :string
  end
end
