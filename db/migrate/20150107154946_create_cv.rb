class CreateCv < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.integer :employee_id
      t.date :birthdate
      t.string :location
      t.string :email
      t.string :telephone
    end
  end
end
