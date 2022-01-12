feature 'adding bookmarks' do
  scenario 'add a bookmark' do
    visit '/bookmarks/new'
    fill_in 'url', with: 'www.google.com'
    click_button('Submit')
    expect(page).to have_content 'www.google.com'

  end
end