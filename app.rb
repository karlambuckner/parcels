require('sinatra')
require('./lib/parcels')

get('/') do
 erb(:input)
end

get('/output') do
  @length = params.fetch('length')
  @width = params.fetch('width')
  @height = params.fetch('height')
  @weight = params.fetch('weight')
  parcel_input = Parcels.new(params.fetch('length').to_i, params.fetch('width').to_i, params.fetch('height').to_i, params.fetch('weight').to_i)
  @parcel_output = parcel_input.cost_to_ship()
  erb(:output)
end
