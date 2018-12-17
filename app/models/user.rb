class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  serialize :following, Array
  
  has_many :tweets

  validates :username, presence: true, uniqueness: true

  mount_uploader :avatar, AvatarUploader

end
