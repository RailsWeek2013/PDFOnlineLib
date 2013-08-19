class AddFlagToPdfFile < ActiveRecord::Migration
  def change
    add_column :pdf_files, :flag, :string
  end
end
