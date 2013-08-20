class PagesController < ApplicationController
	def home
	end

	def gallery
		@pdf_files = PdfFile.where("flag = 'public'")
		@q = @pdf_files.search(params[:q])
		@result = @q.result(distinct: true)
	end

	def search
		gallery
		render :search
	end
end
