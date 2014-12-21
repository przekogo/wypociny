class Employee < ActiveRecord::Base

        validates :name, format: /[A-Z][a-z]*/
        validates :surname, format: /[A-Z][a-z]*/

        validates :name, :surname, presence: true

        belongs_to :user

end