class Play < ApplicationRecord
  validates :title, :description, :director, presence: true
  validates :title, uniqueness: true
end
