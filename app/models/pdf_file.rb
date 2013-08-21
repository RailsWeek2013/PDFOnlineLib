class PdfFile < ActiveRecord::Base
	validates:title, presence: true

	mount_uploader :pdf, FileUploadUploader

	#validates :pdf, format: /\A[a-zA-Z0-9]+\.pdf\z/

	validates :pdf,
                 format:{
                    with: %r{\.(pdf)\z}i, message: "Only files of type *.pdf are permitted"
                    # source: http://stackoverflow.com/questions/14630584/carrierwave-multiple-file-types-validation-with-single-uploader
                        }

    has_many :rates, through: :users                        
end
