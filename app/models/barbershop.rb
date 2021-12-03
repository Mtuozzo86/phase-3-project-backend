class Barbershop < ActiveRecord::Base
    has_many :employees
    has_many :customers
end
