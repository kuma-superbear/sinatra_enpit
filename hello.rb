require 'sinatra'

get '/' do
  'Hello world!'
end

get '/index' do
  erb :index
end

