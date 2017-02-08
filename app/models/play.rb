class Play < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :title, :description, :director, presence: true
  validates :title, uniqueness: true


end
