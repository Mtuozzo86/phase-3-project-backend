class RemoveEmployeeIdFromCustomers < ActiveRecord::Migration[6.1]
  def change
    remove_column :customers, :employee_id
  end
end
