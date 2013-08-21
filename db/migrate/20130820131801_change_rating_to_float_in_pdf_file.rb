class ChangeRatingToFloatInPdfFile < ActiveRecord::Migration
  def change
  	change_column :pdf_files, :rating, :float, default: 0
  end
end
