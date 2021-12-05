class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/" do
    list_of_customers = Customer.all
    list_of_customers.to_json
  end

  get "/test" do
    "test backend".to_json
  end

  get "/another" do
    "testing second route".to_json
  end
end
