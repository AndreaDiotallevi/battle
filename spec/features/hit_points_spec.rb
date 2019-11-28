feature 'View hit points' do
  scenario 'See player 2 hit points' do
    visit('/')
    fill_in('player_1_name', with: 'Mario')
    fill_in('player_2_name', with: 'Luigi')
    click_button('Fight!')
    expect(page).to have_content 'Luigi: 60HP'
  end
end