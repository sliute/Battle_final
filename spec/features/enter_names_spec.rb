require "spec_helper"

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content('Obama vs. Anna')
  end
end

feature "See how close I am to winning" do
  scenario "by seeing opponent's hit points" do
    sign_in_and_play
    expect(page).to have_content('Anna has 100 hit points.')
  end
end
