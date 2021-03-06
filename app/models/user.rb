class User < ApplicationRecord
	attr_accessor :code

	validates :code, on: :create, presence: true, inclusion: { in: ["promo"]}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :gossips
  validates :pseudo, presence: true, uniqueness: true
end
