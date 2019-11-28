feature 'View hit points' do
  scenario 'See player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Derrick: 60HP'
  end
end