class About < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  has_rich_text :content_ar
  has_rich_text :content_2
  has_rich_text :content_ar_2
  has_one_attached :image
  has_one_attached :founder_image
  has_rich_text :founder_description
  has_rich_text :founder_description_ar
end
