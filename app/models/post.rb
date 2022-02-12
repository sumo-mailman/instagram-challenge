# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  message    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
  has_one_attached :image
end
