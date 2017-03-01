#require './app'
# feature "Test Check" do
#   scenario "Checking homepage text" do
#     visit '/'
#     expect(page).to have_content('Testing infrastructure working!')
#   end
# end

feature "Start a fight" do

  scenario "take name of player 1" do
    visit '/'
    fill_in('player_1', with: "Steve Rogers")
    x = find_field('player_1').value
    expect(x).to eq('Steve Rogers')
  end

    scenario "take name of player 2" do
      visit '/'
      fill_in('player_2', with: "Bruce Banner")
      y = find_field('player_2').value
      expect(y).to eq('Bruce Banner')
    end

  end
