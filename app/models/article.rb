class Article < ApplicationRecord
  has_one_attached :photo
  validates :title, presence: true
  has_rich_text :content


end
