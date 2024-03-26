# == Schema Information
#
# Table name: posts
#
#  id          :bigint           not null, primary key
#  title       :text(65535)
#  description :text(65535)
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Post < ApplicationRecord
  validates :title, :description, presence: true
  has_one_attached :photo
  
  belongs_to :user
end
