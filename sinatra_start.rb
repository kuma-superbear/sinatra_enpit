# encoding: utf-8

# File Name: sinatra_start.rb
# Create Day is 2015/05/20
# Last Update Day is 2015/05/20

# Gem List
gem 'tilt', '1.4.1'
# Require List
require 'sinatra'
# sinatra reloader is classic type
require 'sinatra/reloader' if development?
require 'haml'
require 'tilt'
require 'csv'

# 外部エンコーディングを変更
Encoding.default_external = "UTF-8"

get '/' do
	@title = "Welcom to Sinatra BBS!!"
	@comments_data = CSV.read("db/comment_db.csv")
	haml :index
end

put '/request_print' do
	CSV.open("db/comment_db.csv", "a") do |csv|
		csv << [params[:name], params[:title], params[:message]]
	end
	redirect '/'
end
