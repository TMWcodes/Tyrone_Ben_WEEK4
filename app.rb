require 'sinatra'
require 'sinatra/reloader'
require_relative './lib/bookmark.rb'



class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  # get '/' do
  #   erb :index
  # end
  
  get '/bookmarks' do
    @bookmarks = Bookmark.all
      erb :'/bookmarks/index'
    end

  get '/bookmarks/new' do
    erb :'/bookmarks/new'
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])

    redirect '/bookmarks'
  end
  
  run! if app_file == $0
end
