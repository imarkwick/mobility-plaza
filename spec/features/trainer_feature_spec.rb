require 'rails_helper'

RSpec.describe 'Trainers: ', type: :feature do 

  before do 
    @hi_top = Category.find_or_create_by(name: 'Hi-top')
  end

end