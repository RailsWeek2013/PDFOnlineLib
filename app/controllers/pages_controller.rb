class PagesController < ApplicationController
	def home
	end

	def gallery
		@pdf_files = PdfFile.where("flag = 'public'")
	end
	

	def file
		
	end
end
