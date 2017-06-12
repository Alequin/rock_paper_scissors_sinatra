require("sinatra")
require("sinatra/contrib/all") if(development?())

get('/') do
  erb(:welcome)
end

get('/game') do
  erb(:game)
end

get("/result/:hand1/:hand2") do


  
  erb(:result)
end
