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
end

