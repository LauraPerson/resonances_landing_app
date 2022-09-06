class Activity < ApplicationRecord
  has_one_attached :photo
  validates :title, presence: true
  has_rich_text :description
end
