require "sinatra"
require "chuck_norris"
require "pry"
require "rest-client"

get "/" do
    erb :home
end

get "/help" do
    erb :help
end

jk = ChuckNorris::JokeFinder.get_joke

get "/random" do
  @joke = jk.joke
  erb :random
end

get "/results" do
    erb :results
end

get "/search" do
    erb :search
end
