class Trainer < ActiveRecord::Base
  belongs_to :category
  belongs_to :brand
  has_many :trainer_colours, inverse_of: :trainer
  has_many :colours, through: :trainer_colours
  has_many :images, inverse_of: :trainer
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style:missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
