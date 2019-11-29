feature "Attack player" do
  scenario "Attack player 2" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Melvin attacked Derrick!'
  end

  scenario "Attack player 2 should reduce player 2 HP by 10" do
    sign_in_and_play
    click_button 'Attack!'
    click_button 'OK'
    expect(page).not_to have_content "Derrick: 60HP"
    expect(page).to have_content "Derrick: 50HP"
  end
end