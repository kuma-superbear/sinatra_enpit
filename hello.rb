require 'sinatra'

get '/' do
  "Hello World!"
end

get '/' do
  pass if Time.now > time_for('Dec 23, 2012')
  "まだ時間がある"
end

get '/' do
  '熊川さん、今日は新しい人が加わってくれましたよ'
end
