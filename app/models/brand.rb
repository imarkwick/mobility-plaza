class Brand < ActiveRecord::Base
  has_many :trainers, inverse_of: :brand
end
