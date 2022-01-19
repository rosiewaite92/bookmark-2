require 'pg'

# feature 'View bookmarks' do
#   scenario 'Visiting the index page' do
#     visit ("/")
#     expect(page).to have_content "Bookmark Manager"
#   end

#   scenario 'Viewing bookmarks' do
#     visit ('/bookmarks')
#     expect(page).to have_content "http://www.google.com"
#     expect(page).to have_content "http://www.makersacademy.com"
#   end
# end


feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end


scenario 'Visiting /bookmarks shows me all the bookmarks' do
 connection = PG.connect(dbname: 'bookmark_manager_test')
Bookmark.create(url: "http://www.makersacademy.com")
 Bookmark.create(url: "http://www.destroyallsoftware.com")
 Bookmark.create(url: "http://www.google.com")
  
  visit('/bookmarks')
end 
end 