class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/" do
    Customer.all.to_json
  end

  get "/test" do
    "something".to_json
  end

  get "/another" do
    "testing second route".to_json
  end
end
