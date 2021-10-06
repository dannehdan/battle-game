feature 'Testing infrastructure' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content("Dan attacked Beth")
  end

  scenario 'Player 1 reduces Player 2s HP' do
    sign_in_and_play
    expect { click_button 'Attack' }.to change { $game.player_2.hit_points }.by(-10)
  end
end