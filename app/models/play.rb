class Play < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :title, :description, :director, presence: true
  validates :title, uniqueness: true

  has_attached_file :play_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :play_image, content_type: /\Aimage\/.*\z/
end
