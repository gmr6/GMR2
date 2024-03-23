class LegalNotice < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  has_rich_text :content_ar
end
