feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Samir'
    fill_in :player_2_name, with: 'Luna'
    click_button 'Submit'
    expect(page).to have_content 'Samir vs. Luna'
  end
end
