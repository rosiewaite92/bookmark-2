feature 'Adding bookmarks' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://facebook.com')
    click_button('Submit')

    expect(page).to have_content 'http://facebook.com'
  end
end