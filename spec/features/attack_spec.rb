feature "Attack player" do
  scenario "Attack player 2" do
    sign_in_and_play
    click_link 'Attack player 2!'
    expect(page).to have_content 'Melvin attacked Derrick!'
  end
end