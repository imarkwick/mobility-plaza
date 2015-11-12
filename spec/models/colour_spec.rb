require 'rails_helper'

RSpec.describe Colour do 

  before do
    @orange = Colour.create(name: 'Orange')
    @trainer = Trainer.create(name: 'Air Max 90')
    @trainer2 = Trainer.create(name: 'Air Force One')
  end

  it 'should be valid' do
    expect(@orange.valid?).to be true
  end

  it 'should have a name' do
    expect(@orange.name).to eq 'Orange'
  end

  it 'can have a trainer' do
    @trainer.colours = [@orange]
    expect(@trainer.colours.first.name).to eq 'Orange'
  end

  it 'can have multiple trainers with that colour' do
    @trainer.update(colours: [@orange])
    @trainer2.update(colours: [@orange])
    expect(@orange.trainers.count).to eq 2
  end
  
end