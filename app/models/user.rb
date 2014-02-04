class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  require 'carrierwave/orm/activerecord'
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :profile_image, ProfileImageUploader
  # validates_presence_of :profile_image

  has_many :subrooms
end
