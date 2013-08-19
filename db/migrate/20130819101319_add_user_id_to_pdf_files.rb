class AddUserIdToPdfFiles < ActiveRecord::Migration
  def change
    add_reference :pdf_files, :user, index:true
  end
end
