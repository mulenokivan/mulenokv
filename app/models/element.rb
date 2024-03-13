class Element < ApplicationRecord
  AVAILABLE_TYPES = ['paragraph', 'image', 'video-embed']
  belongs_to :post
  validates :element_type, inclusion: { in: AVAILABLE_TYPES }
  has_rich_text :content
  has_one_attached :image

  AVAILABLE_TYPES.each do |type|
    define_method("#{type}?") do
      element_type == type
    end
  end
end

# == Schema Information
#
# Table name: elements
#
#  id           :bigint           not null, primary key
#  element_type :string
#  position     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  post_id      :bigint           not null
#
# Indexes
#
#  index_elements_on_post_id  (post_id)
#
# Foreign Keys
#
#  fk_rails_...  (post_id => posts.id)
#
