
feature "Test Check" do
  scenario "Checking homepage text" do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end
end
