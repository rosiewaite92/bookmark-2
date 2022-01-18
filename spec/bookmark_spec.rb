# require 'bookmarks'

describe '#list' do
  it 'returns a list of bookmarks' do
    bookmarks = Bookmark.list

    expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com"
  end
end