require 'rails_helper'

feature 'game' do
  scenario 'should display welcome message' do
    visit '/game'
    expect(page).to have_content 'Welcome to Adventure Bot. When ready, click below to start you journey.'
    expect(page).to have_link 'Begin'
  end
end
