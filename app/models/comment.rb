# == Schema Information
#
# Table name: comments
#
#  id          :bigint           not null, primary key
#  description :text(65535)
#  post_id     :bigint           not null
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
end
