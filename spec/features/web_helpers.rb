def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Obama'
  fill_in :player_2_name, with: 'Anna'
  click_button 'submit'
end
