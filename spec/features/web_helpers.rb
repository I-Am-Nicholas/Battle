def sign_in_and_play
  visit '/'
  fill_in('PLAYER_1', with: "Steve Rogers")
  fill_in('PLAYER_2', with: "Bruce Banner")
end
