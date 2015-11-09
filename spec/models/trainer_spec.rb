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

  end

  it 'should have a link to buy' do

  end

end
