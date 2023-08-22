class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tools, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :first_name, :last_name, :email, :address, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP
  validates_length_of :first_name, :last_name, maximum: 150, minimum: 3
end
