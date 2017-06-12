require("sinatra")
require("sinatra/contrib/all") if(development?())

require_relative("models/rock_paper_scissors.rb")

get('/') do
  erb(:welcome)
end

get('/game') do
  erb(:game)
end

get("/result/:hand1/:hand2") do

  hand1 = RockPaperScissors.new(params[:hand1])
  hand2 = RockPaperScissors.new(params[:hand2])

  erb(:result)
end
