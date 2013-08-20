class PdfFilesController < ApplicationController
  before_filter :authenticate_user!, only: [:edit, :update, :download, :destroy]
  before_action :set_pdf_file, only: [:show, :edit, :update, :download, :destroy]

  # GET /pdf_files
  # GET /pdf_files.json
  def index
    @pdf_files = PdfFile.where("user_id = #{current_user.id}")
  end

  # GET /pdf_files/1
  # GET /pdf_files/1.json
  def show
  end

  # GET /pdf_files/new
  def new
    @pdf_file = PdfFile.new
  end

  # GET /pdf_files/1/edit
  def edit
  end

  # POST /pdf_files
  # POST /pdf_files.json
  def create
    @user = User.find(current_user)
    @pdf_file = PdfFile.new(pdf_file_params)

    respond_to do |format|
      if @pdf_file.save
        format.html { redirect_to @pdf_file, notice: 'Pdf file was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pdf_file }
      else
        format.html { render action: 'new' }
        format.json { render json: @pdf_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pdf_files/1
  # PATCH/PUT /pdf_files/1.json
  def update
    respond_to do |format|
      if @pdf_file.update(pdf_file_params)
        format.html { redirect_to @pdf_file, notice: 'Pdf file was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pdf_file.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def download
      send_file @pdf_file.pdf
  end

  # DELETE /pdf_files/1
  # DELETE /pdf_files/1.json
  def destroy
    @pdf_file.destroy
    respond_to do |format|
      format.html { redirect_to pdf_files_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pdf_file
      @pdf_file = PdfFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pdf_file_params
      params.require(:pdf_file).permit(:title, :pdf, :flag, :user_id, :tags)
    end
end
