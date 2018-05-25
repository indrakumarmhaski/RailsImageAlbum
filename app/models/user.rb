class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  mount_uploader :avtar, AvtarUploader

  has_many :albums, dependent: :destroy

  validates_presence_of :avtar,:name

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
