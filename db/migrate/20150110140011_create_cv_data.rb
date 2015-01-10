class CreateCvData < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :name
      t.integer :cv_id
    end
    create_table :experiences do |t|
      t.string :name
      t.integer :cv_id
    end
    create_table :hobbies do |t|
      t.string :name
      t.integer :cv_id
    end
    create_table :languages do |t|
      t.string :name
      t.integer :cv_id
    end
    create_table :skills do |t|
      t.string :name
      t.integer :cv_id
    end
  end
end
