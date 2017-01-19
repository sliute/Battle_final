require 'spec_helper'

feature "Win a game by attacking opponent" do
  scenario "and get confirmation" do
    sign_in_and_play
    click_button 'attack'
    expect(page).to have_content('Obama has attacked Anna.')
  end
end

feature "Attack an opponent" do
  scenario "and reduce their hit points" do
    sign_in_and_play
    click_button 'attack'
    click_button 'ok'
    expect(page).not_to have_content('Anna has 100 hit points.')
    expect(page).to have_content('Anna has 90 hit points.')
  end
end
