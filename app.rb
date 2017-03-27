require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/grab') do
  @side0 = params.fetch('side0')
  @side1 = params.fetch('side1')
  @side2 = params.fetch('side2')
  @output = Triangle.new(@side0, @side1, @side2).triangle?()
  erb(:triangle)
  end
