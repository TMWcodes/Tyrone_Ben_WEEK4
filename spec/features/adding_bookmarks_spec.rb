feature 'adding bookmarks' do
  scenario 'add a bookmark' do
    visit '/bookmarks/new'
    fill_in 'url', with: 'www.google.com'
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')
    expect(page).to have_link('Test Bookmark', href: 'http://www.example.org')

  end
end