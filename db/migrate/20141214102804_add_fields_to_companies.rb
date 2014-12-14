class AddFieldsToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :contact_name, :string
    add_column :companies, :contact_surname, :string
    add_column :companies, :contact_email, :string
    add_column :companies, :contact_telephone, :string
    add_column :companies, :company_address, :string
    add_column :companies, :company_address2, :string
  end
end
