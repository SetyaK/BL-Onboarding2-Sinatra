require 'spec_helper.rb'
require 'json'

describe 'My Sinatra Application' do
  it 'should allow accessing the home page' do
    get '/'
    expect(last_response).to be_ok
  end

  it 'greets by name' do
    productname = 'Bugs Bunny'
    productdesc = 'Rabbit'
    productstock = '3'
    post '/product', 'name' => productname,
                     'description' => productdesc,
                     'initial_stock' => productstock
    result = JSON.parse(last_response.body)
    expect(result['product']).to eq('as')
  end
end
