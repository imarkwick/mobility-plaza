require 'rails_helper'

RSpec.describe Trainer do 

  before do
    @category1 = Category.create(name: 'Sneakers')
    @trainer1 = @category1.trainers.find_or_create_by(name: 'Air Max 1')
  end

  it 'should be valid' do
    expect(@trainer1.valid?).to be true
  end

  it 'should have a name' do
    expect(@trainer1.name).to eq 'Air Max 1'
  end

  it 'should belong to a category' do
    expect(@trainer1.category.name).to eq 'Sneakers'
  end

  it 'should have a price' do
    expect(@trainer1.price).to eq nil
    @trainer1.price = 81.00
    expect(@trainer1.price).to eq 81.00
  end

  it 'should have a link to buy' do
    @trainer1.link = 'https://www.google.co.uk'
    expect(@trainer1.link).to eq 'https://www.google.co.uk'
  end

  it 'should have an image' do
    @trainer1.update(image: File.new("#{Rails.root}/db/images/categories/airmax1.jpg"))
    expect(@trainer1.image_file_name).to eq 'airmax1.jpg'
  end

end
