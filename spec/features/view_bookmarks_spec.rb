feature 'View bookmarks' do
  scenario 'Visiting the index page' do
    visit ("/")
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'Viewing bookmarks' do
    visit ('/bookmarks')
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.twitter.com"
  end
end



# <a href="url">link text</a>





# <ul>
# <% @bookmarks.each do |x| %>
# <li><%= x %></li>
# <% end %>
# </ul>


# <ul>
# <% @bookmarks.each do |x| %>
# <li><a href=<%=  "x"  %>></a></li>
# <% end %>
# </ul>