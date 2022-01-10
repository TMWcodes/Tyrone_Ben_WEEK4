require 'sinatra'
require 'sinatra/reloader'



class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  get '/' do
    erb :index
  end
  
  get '/bookmarks' do
   bookmarks = ["www.toutube.com",
    "www.google.com",
    "www.example.com"]
  end
  
  run! if app_file == $0
end
