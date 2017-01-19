require 'spec_helper'

feature "switch turns" do
  scenario "after attacking" do
    sign_in_and_play
    click_button 'attack'
    click_button 'ok'
    expect(page).to have_content("It's Anna's turn!")
  end
end
