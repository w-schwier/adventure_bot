require 'rails_helper'

feature 'responses' do
  include SessionHelper
  before do
    seed_data_base
  end

  scenario 'checks page has replay button' do
    visit '/game'
    click_button 'Begin Adventure'
    expect(current_path).to eq '/game/1/responses'
    click_button 'North'
    expect(page).to have_content('Suddenly things turn foggy')
    expect(page).not_to have_content('The sun beckons to you as you stroll along a well formed travelway.')
    expect(page).to have_button 'Replay'
  end
end
