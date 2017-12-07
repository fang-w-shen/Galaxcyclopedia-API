class Post < ApplicationRecord
	belongs_to :user
	mount_uploader :picture, PictureUploader
	default_scope -> { order(created_at: :desc) }
	validates :user_id, presence: true
	validates :content, presence: true, length: { maximum: 140 }
	validates :picture, presence: true

	# validate :picture_size
	private
	# def picture_size
	# 	if picture.size < 5.megabytes
	# 		errors.add(:picture, "should be at least 5MB")
	# 	end
	# end
end