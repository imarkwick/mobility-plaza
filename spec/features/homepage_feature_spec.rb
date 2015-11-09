require 'rails_helper'

RSpec.describe 'On the homepage: ', type: :feature do 

  context 'there are several ways you can go on to view trainers' do

    before do
      @category = Category.find_or_create_by(name: 'Designer')
      @trainer = @category.trainers.find_or_create_by(name: 'Air Max 1')
    end

    scenario 'there is a link to browse all' do
      visit '/'
      expect(page).to have_link 'Browse All Trainers'
    end

    scenario 'clicking the Browse All button takes you to a page with all trainers' do
      visit '/'
      click_link 'Browse All Trainers'
      expect(current_path).to eq '/trainers'
      expect(page).to have_content @trainer.name
    end

  end
  
end