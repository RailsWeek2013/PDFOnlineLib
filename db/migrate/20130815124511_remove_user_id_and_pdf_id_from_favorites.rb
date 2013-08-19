class RemoveUserIdAndPdfIdFromFavorites < ActiveRecord::Migration
  def change
    remove_column :favorites, :user_id, :integer
    remove_column :favorites, :pdf_id, :integer
  end
end
