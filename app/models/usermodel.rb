class Usermodel < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:timeoutable,
         :recoverable, :rememberable, :validatable

  enum role: {Admin: 0, Moderator: 1, Normal: 2}       
end
