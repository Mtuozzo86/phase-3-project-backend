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
    review = Review.create(body: params[:body], employee_id: params[:employee_id])
    review.to_json
  end

  get "/reviews" do
    Review.all.to_json
  end
end
