class User < ActiveRecord::Base
	has_many :pdffiles
	has_many :pdffiles, through: :favorites
	has_many :reviews
	has_many :pdffiles, through: :rates
	validates :user_name, uniqueness: true
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :rememberable, :trackable, :validatable

  
end
