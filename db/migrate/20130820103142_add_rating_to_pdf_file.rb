class AddRatingToPdfFile < ActiveRecord::Migration
  def change
    add_column :pdf_files, :rating, :integer, :default => 0
  end
end
