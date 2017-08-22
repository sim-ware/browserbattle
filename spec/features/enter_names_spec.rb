feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Simi vs. Luna'
  end
end
