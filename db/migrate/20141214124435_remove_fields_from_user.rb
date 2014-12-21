class RemoveFieldsFromUser < ActiveRecord::Migration
  def change
        remove_column :users, :name, :string
        remove_column :users, :surname, :string
        remove_column :users, :gender, :string
        remove_column :users, :telephone, :string
        remove_column :users, :birthdate, :date
  end
end
