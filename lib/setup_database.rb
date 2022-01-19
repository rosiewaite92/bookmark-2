require 'pg'

p "Setting up database..."

connection = PG.connect(dbname: 'bookmark_manager')

# Clear the bookmarks table
# connection.exec("TRUNCATE bookmarks;")