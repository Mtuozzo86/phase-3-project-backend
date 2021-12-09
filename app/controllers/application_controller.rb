require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/customers" do
    Customer.all.to_json
  end

  post "/new-review" do
    customer = Customer.create(name: params[:userName])

    customer.to_json
  end

  post "/reviews" do
    user = Customer.create(name: params[:userName])
    user.to_json
    
    review = Review.create(body: params[:body], customer_id: user.id)
    review.to_json
    
  end

  get "/reviews" do
    Review.all.to_json
  end
end
