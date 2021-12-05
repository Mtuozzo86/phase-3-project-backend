class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :body
      t.integer :customer_id
      t.integer :employee_id
      t.timestamps
    end
  end
end
