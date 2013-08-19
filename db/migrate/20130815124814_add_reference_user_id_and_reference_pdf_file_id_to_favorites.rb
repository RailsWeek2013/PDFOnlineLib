class AddReferenceUserIdAndReferencePdfFileIdToFavorites < ActiveRecord::Migration
  def change
    add_reference :favorites, :user_id, index: true
    add_reference :favorites, :pdf_file_id, index: true
  end
end
