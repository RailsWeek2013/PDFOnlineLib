class AddCounterToPdfFile < ActiveRecord::Migration
  def change
    add_column :pdf_files, :counter, :integer, :default => 0
  end
end
