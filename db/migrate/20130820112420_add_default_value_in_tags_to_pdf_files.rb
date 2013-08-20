class AddDefaultValueInTagsToPdfFiles < ActiveRecord::Migration
  def change
  	change_column :pdf_files, :tags,:string, :default => "untagged"
  end
end
