feature 'View bookmarks' do
  scenario 'Visiting the index page' do
    visit ("/")
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'Viewing bookmarks' do
    visit ('/bookmarks')
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.makersacademy.com"
  end
end

