class AddCustomerNameToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :customer_name, :string
  end
end
