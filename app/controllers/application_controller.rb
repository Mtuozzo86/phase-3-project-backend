require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/employees" do
    Employee.all.to_json
  end

  get "/employees/:id" do
    employee = Employee.find(params[:id])
    employee.to_json(include: :reviews)
  end
  


  post "/reviews" do

    
    review = Review.create(body: params[:body],  employee_id: params[:barberId])
    review.to_json
    
  end

  get "/reviews" do
    Review.all.to_json
  end
end
