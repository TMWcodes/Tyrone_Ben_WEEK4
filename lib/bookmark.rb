require 'pg'

class Bookmark
    def self.all
        if ENV['ENVIRONMENT'] == 'test'
        connection = PG.connect(dbname: 'bookmark_manager_test')
        else
        connection = PG.connect(dbname: 'bookmark_manager')
        end
        
        result = connection.exec("SELECT * FROM bookmarks;")
        result.map { |bookmark| bookmark['url'] }

        # ["www.toutube.com",
        # "www.google.com",
        # "www.example.com"]
    end

    def self.create(url:, title:)
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'bookmark_manager_test')
            else
            connection = PG.connect(dbname: 'bookmark_manager')
        end

        connection.exec("INSERT INTO bookmarks (url) VALUES('#{title}','#{url}') RETURNING id, url, title")
    end
end
