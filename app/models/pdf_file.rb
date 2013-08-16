class PdfFile < ActiveRecord::Base
	validates :title, presence: true

	mount_uploader :pdf, FileUploadUploader
end
