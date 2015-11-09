class Category < ActiveRecord::Base
  has_many :trainers, inverse_of: :category
end
