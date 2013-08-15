class User < ActiveRecord::Base
	has_many :pdf_files
	has_many :pdf_files, through: :favorites
	has_many :reviews

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
end
