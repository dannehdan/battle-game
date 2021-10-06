feature 'Testing infrastructure' do
  scenario 'Starts Player 2 with 20 HP' do
    sign_in_and_play
    expect(page).to have_content("Player 2 HP: 20")
  end
end