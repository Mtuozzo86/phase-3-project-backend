class Customer < ActiveRecord::Base
  has_many :reviews
  has_many :employees, through: :reviews
end
