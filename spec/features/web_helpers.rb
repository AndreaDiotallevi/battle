def sign_in_and_play
  visit '/'
  fill_in 'player_1_name', with: 'Melvin'
  fill_in 'player_2_name', with: 'Derrick'
  click_button 'Fight!'
end