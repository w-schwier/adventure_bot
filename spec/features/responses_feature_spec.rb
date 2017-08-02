require 'rails_helper'

feature 'responses' do
  scenario 'checks page has response' do
    visit '/game'
    click_link 'Begin'
    expect(current_path).to eq '/game/1/responses'
    click_button 'North'
    expect(page).to have_content('Suddenly things turn foggy')
    expect(page).not_to have_content('The sun beckons to you as you stroll along a well formed travelway.')
  end
end
