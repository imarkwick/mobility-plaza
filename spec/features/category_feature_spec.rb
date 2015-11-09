require 'rails_helper'

RSpec.describe 'Categories: ', type: :feature do
  
  before do
    @hi_top = Category.find_or_create_by(name: 'Hi-top')
  end

  context 'exist on Fresh Creps' do
    
    scenario 'and are displayed on the home page' do
      visit '/categories'
      expect(page).to have_content 'Hi-top'
    end

    scenario 'link through to the individual product page' do
      category_url = '/categories/' + @hi_top.id.to_s
      visit '/categories'
      click_link 'Hi-top'
      expect(current_path).to eq category_url
    end
  end
end