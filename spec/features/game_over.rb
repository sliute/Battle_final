require 'spec_helper'
require 'player'

feature 'Game is over' do
  scenario "if a player's score reaches 0HP, they lose" do
    play_through = ((Player::HIT_POINTS / 10) - 1) * 2
    sign_in_and_play
    play_through.times { attack_and_confirm }
    click_button "attack"
    expect(page).to have_content("Anna, you lost!")
  end
end
