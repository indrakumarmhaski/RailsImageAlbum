class Album < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user, dependent: :destroy
end
