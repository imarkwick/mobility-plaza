require 'rails_helper'

RSpec.describe 'Categories: ', type: :feature do
  
  before do
    Category.find_or_create_by(name: 'Hi-top')
  end

  context 'exist on Fresh Creps' do
    scenario 'and are displayed on the home page' do
      visit '/categories'
      expect(page).to have_content 'Hi-top'
    end
  end

end