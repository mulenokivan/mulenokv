class Element < ApplicationRecord
  belongs_to :post
end

# == Schema Information
#
# Table name: elements
#
#  id           :bigint           not null, primary key
#  content      :text
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
