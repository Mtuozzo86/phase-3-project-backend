require "pry"

class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/employees" do
    Employee.all.to_json
  end

  get "/customers" do
    Customer.all.to_json
  end

  get "/employees/:id" do
    employee = Employee.find(params[:id])
    employee.to_json(include: :reviews)
  end

  post "/reviews" do
    user = Customer.create(name: params[:userName])
    user.to_json
    review = Review.create(body: params[:body], employee_id: params[:barber], customer_id: user.id)
    review.to_json
  end

  get "/reviews/:id" do
    review = Review.find(params[:id])
    review.to_json
  end

  delete "/reviews/:id" do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

  get "/reviews" do
    Review.all.to_json
  end
end
