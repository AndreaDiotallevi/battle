feature "Test infrastructure" do
  scenario 'Can run app and check page content' do
    visit '/'
    expect(page).to have_content 'Hello my vicious and petulant audience! IT is TIME! For BATTLE!'
  end
end
