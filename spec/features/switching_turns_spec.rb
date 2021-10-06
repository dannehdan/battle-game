feature 'Switching turns' do
  scenario 'at the start of the game' do
    sign_in_and_play
    expect(page).to have_content "Dan's turn"
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content "Beth's turn"
  end
end