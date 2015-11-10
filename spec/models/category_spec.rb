require 'rails_helper'

RSpec.describe Category do 

  before do
    @category1 = Category.create(name: 'Hi-top')
  end

  it 'should be valid' do
    expect(@category1.valid?).to be true
  end

  it 'should have a name' do
    expect(@category1.name).to eq 'Hi-top'
  end

  it 'should return nil when it has no trainers' do
    expect(@category1.trainers).to eq []
  end

  it 'should be able to have trainers associated with it' do
    trainer1 = @category1.trainers.find_or_create_by(name: 'First Shoe')
    expect(@category1.trainers).to eq [trainer1]
  end

  it 'should have an image' do
    @category1.image = File.new("#{Rails.root}/db/images/categories/Hi-top.png")
    expect(@category1.image_file_name).to eq 'Hi-top.png'
  end
end

