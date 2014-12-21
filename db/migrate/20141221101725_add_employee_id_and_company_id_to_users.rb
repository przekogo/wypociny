class AddEmployeeIdAndCompanyIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :company_id, :int
    add_column :users, :employee_id, :int
  end
end
