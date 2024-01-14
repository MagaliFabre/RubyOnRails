# app/models/user.rb
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         attr_accessor :first_name, :last_name, :date_of_birth, :email, :password, :password_confirmation, :remember_me
  has_many :activities
end
