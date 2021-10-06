feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    fill_in :player_1_name, with: "Dan"
    fill_in :player_2_name, with: "Beth"
    click_button 'Submit'
    expect(page).to have_content("Dan vs. Beth")
  end
end