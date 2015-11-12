require 'rails_helper'

RSpec.describe Brand do 

  before do 
    @brand = Brand.create(name: 'Nike')
    @trainer = Trainer.create(name: 'Air Max 90')
    @trainer2 = Trainer.create(name: 'Air Force One')
  end

  it 'should be valid' do
    expect(@brand.valid?).to be true
  end

  it 'should have a name' do
    expect(@brand.name).to eq 'Nike'
  end

  it 'can have a trainer' do
    @trainer.update(brand: @brand)
    expect(@trainer.brand.name).to eq 'Nike'
  end

  it 'can have multiple trainers' do
    @trainer.update(brand: @brand)
    @trainer2.update(brand: @brand)
    expect(@brand.trainers.count).to eq 2
  end

end