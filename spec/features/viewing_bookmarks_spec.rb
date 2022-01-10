feature 'Viewing Bookmarks' do
  scenario 'a user can view stored bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content("www.example.com")
    expect(page).to have_content("www.google.com")
    expect(page).to have_content("www.toutube.com")
  end
end