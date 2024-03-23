class Privacy < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  has_rich_text :content_ar
end
