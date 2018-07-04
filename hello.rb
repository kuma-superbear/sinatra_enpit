require 'sinatra'

get '/' do
  "Hello World!"
end

get '/' do
  pass if Time.now > time_for('Dec 23, 2012')
  "まだ時間がある"
end
