require 'spec_helper'

feature 'See hit points' do
  scenario "see opponent's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Obama has 100 hit points.'
  end
end
