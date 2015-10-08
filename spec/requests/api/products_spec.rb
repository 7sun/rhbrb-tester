require 'rails_helper'

RSpec.describe "Products API Endpoint", type: :request do

  it "sends all products" do
    products = create_list(:product, 10)

    get '/api/products'

    expect(response).to be_success
    expect(response).to have_http_status(200)
  end


end