class Favorite < ActiveRecord::Base
	belongs_to :users
	belongs_to :pdf_files
end
