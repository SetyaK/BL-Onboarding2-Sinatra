require 'sinatra'
require 'dotenv/load'
require 'mini_store'

ActiveRecord::Base.include_root_in_json = true

get '/' do
  'Hello world!'
end

get '/product' do
  content_type :json
  MiniStore.products.to_json
end

get '/product/:id' do
  content_type :json
  MiniStore.product(params['id']).to_json
end

post '/product' do
  result = MiniStore.add_product(params[:name], params[:description],
                                 params[:initial_stock])
  result.to_json
end

post '/product/:id' do
  result = MiniStore.update_product(params['id'], params[:name],
                                    params[:description])
  result = MiniStore.product(params['id']) if result
  result.to_json
end

delete '/product/:id' do
  MiniStore.remove_product(params['id'])
end
