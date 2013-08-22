class User < ActiveRecord::Base
	has_many :pdf_files, dependent: :destroy
	has_many :pdf_files, through: :favorites, dependent: :destroy
	has_many :recensions
	has_many :pdffiles, through: :rates
	validates :user_name, uniqueness: true
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :rememberable, :trackable, :validatable

  
end
