

class Customer < ActiveRecord::Base
  belongs_to :employees
  has_many :reviews, through: :employees


end
