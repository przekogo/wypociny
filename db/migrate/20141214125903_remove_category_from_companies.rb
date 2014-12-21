class RemoveCategoryFromCompanies < ActiveRecord::Migration
  def change
            remove_column :companies, :category, :string
  end
end
