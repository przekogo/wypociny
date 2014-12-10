class AddFieldsToUser < ActiveRecord::Migration
  def change
        add_column :users, :name, :string
        add_column :users, :surname, :string
        add_column :users, :role, :string
        add_column :users, :gender, :string
        add_column :users, :telephone, :string
        add_column :users, :birthdate, :date
  end
end
