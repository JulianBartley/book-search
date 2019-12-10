require 'sinatra'
require 'googlebooks'

get '/' do
  # render a form
  erb :index
end

post '/' do
  puts params
  @input = params['query']
  @results = GoogleBooks.search(@input)
  erb :results
end

# post'/' do
#   puts @results = GoogleBooks.search(@input)
#   erb :books
# end
