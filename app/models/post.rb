# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  message    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  validate :image_presence

  def image_presence
    errors.add(:image, "can't be blank") unless image.attached?
  end 
end
