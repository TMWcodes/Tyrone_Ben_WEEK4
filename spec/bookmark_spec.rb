
require 'bookmark'

describe Bookmark do
    context '.all' do
        it 'returns bookmarks' do
            bookmarks = Bookmark.all
            expect(bookmarks).to include("www.toutube.com")
            expect(bookmarks).to include("www.google.com")
            expect(bookmarks).to include("www.example.com")
        end
    end
end