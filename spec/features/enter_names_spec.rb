feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    sign_in_and_play
    expect(page).to have_content("Dan vs. Beth")
  end
end