require 'sinatra'

a = {}

get '/hello' do

  if a.has_key? 'cache'
    puts "have cache"
    return 'from cache'
  end

  result = 'hello world!!'
  a['cache']=result
  return result
end