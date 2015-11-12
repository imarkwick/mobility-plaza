require 'rails_helper'

RSpec.describe Trainer do 

  before do
    @category1 = Category.create(name: 'Sneakers')
    @air_max = @category1.trainers.find_or_create_by(name: 'Air Max 1')
    @nike = Brand.create(name: 'Nike')
    @black = Colour.create(name: 'Black')
    @white = Colour.create(name: 'White')
  end

  it 'should be valid' do
    expect(@air_max.valid?).to be true
  end

  it 'should have a name' do
    expect(@air_max.name).to eq 'Air Max 1'
  end

  it 'should belong to a category' do
    expect(@air_max.category.name).to eq 'Sneakers'
  end

  it 'should have a price' do
    expect(@air_max.price).to eq nil
    @air_max.price = 81.00
    expect(@air_max.price).to eq 81.00
  end

  it 'should have a link to buy' do
    @air_max.link = 'https://www.google.co.uk'
    expect(@air_max.link).to eq 'https://www.google.co.uk'
  end

  it 'should have an image' do
    @air_max.update(image: File.new("#{Rails.root}/db/images/categories/airmax1.jpg"))
    expect(@air_max.image_file_name).to eq 'airmax1.jpg'
  end

  it 'should have a brand' do
    @air_max.update(brand: @nike)
  end

  it 'should have one or more colour/s' do
    @air_max.colours = [@black, @white]
    expect(@air_max.colours).to eq [@black, @white]
  end

end
