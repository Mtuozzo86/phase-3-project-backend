class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/" do
    Customer.all.to_json
  end

  post "/new-review" do
    customer = Customer.create(name: params[:userName])
    
    review = Review.create(body: params[:body])
  end

  get "/another" do
    "testing second route".to_json
  end
end
