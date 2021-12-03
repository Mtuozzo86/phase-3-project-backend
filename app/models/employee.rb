class Employee < ActiveRecord::Base
  belongs_to :barbershop
  has_many :customers
end
