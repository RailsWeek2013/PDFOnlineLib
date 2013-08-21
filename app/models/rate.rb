class Rate < ActiveRecord::Base
	belongs_to :users
	belongs_to :pdffiles
end
