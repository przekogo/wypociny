class Employee < ActiveRecord::Base

        validates :name, :surname, presence: true

        belongs_to :user

end