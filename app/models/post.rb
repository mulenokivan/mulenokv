class Post < ApplicationRecord
  has_many :elements

  has_one_attached :header_image
end

# == Schema Information
#
# Table name: posts
#
#  id           :bigint           not null, primary key
#  description  :text
#  published    :boolean
#  published_at :datetime
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
