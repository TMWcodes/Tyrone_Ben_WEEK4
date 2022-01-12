
require 'bookmark'

describe Bookmark do
    describe '.all' do
        it 'returns a list of bookmarks' do
            Bookmark.create(url: "http://www.makersacademy.com")
            Bookmark.create(url: "http://www.google.com")
            Bookmark.create(url: "http://www.destroyallsoftware.com")
        
            bookmarks = Bookmark.all
        
            expect(bookmarks).to include('http://www.makersacademy.com')
            expect(bookmarks).to include('http://www.destroyallsoftware.com')
            expect(bookmarks).to include('http://www.google.com')
        end
    end

    describe '.create' do
        it 'creates a new bookmark' do
            Bookmark.create(url: 'http://www.example.org')
            expect(Bookmark.all).to include 'http://www.example.org'
        end
    end
end