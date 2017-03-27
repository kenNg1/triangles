require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/grab') do
  @partial = params[:checkbox]
  if @partial=='exact'
  # @partial = params.fetch('radio_button') --> checked = 3
  @word = params.fetch('word')
  @output = params.fetch('sentence').word_count_exact(@word)
  erb(:sentence)
  else
  # @partial = params.fetch('radio_button') --> unchecked = 4
  @word = params.fetch('word')
  @output = params.fetch('sentence').word_count_partial(@word)
  erb(:sentence)
  end
end
