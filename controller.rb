require("sinatra")
require("sinatra/contrib/all") if(development?())

get('/') do
  erb(:welcome)
end

get('/game') do
  erb(:game)
end
