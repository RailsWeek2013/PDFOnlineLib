class RecensionsController < ApplicationController

	def new
		@recension = Recension.new
		

		
	end
	def create
		@recension = Recension.new(recension_params)
		@user = current_user.id

		@recension.user_id = @user

		if @recension.save
			redirect_to pdf_file_path(@recension.pdf_file_id), notice: "Recension saved"
		else
			redirect_to pdf_file_path(@recension.pdf_file_id), alert: "Oh noes! The recension could not be saved!"
		end
	end

	def destroy
		@recension = Recension.find(params[:id])

		if @recension.destroy
			redirect_to pdf_file_path(@recension.pdf_file_id), notice: "Recension deleted"
		else
			redirect_to pdf_file_path(@recension.pdf_file_id), alert: "Oh noes! The recension could not be deleted!"
		end
	end

	def show
		@recensions = Recension.where("pdf_file_id = ?", params[:id])
	end

	private
	def recension_params
		params.require(:recension).permit(:user_id, :pdf_file_id, :recension)
	end
end
