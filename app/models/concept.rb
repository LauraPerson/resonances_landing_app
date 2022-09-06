class Concept < ApplicationRecord
  has_one_attached :photo
  validates :description, presence: true
  has_rich_text :description
end
