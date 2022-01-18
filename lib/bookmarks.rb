class Bookmark

  require 'pg'

  # def initialize

  #   @bookmark_list = ["http://www.google.com", "http://www.twitter.com"]

  # end

  # def list

  #   @bookmark_list = ["http://www.google.com", "http://www.twitter.com"]

  # end

  def self.list
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

end
