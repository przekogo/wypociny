class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

        validates :name, format: /[A-Z][a-z]*/

        validates :role, inclusion: { in: %w(admin user company)}

        validates :gender, inclusion: {in: %w(male female)}

        validates :telephone, numericality: true
        validates :telephone, length: { is: 9 }

        validates :name, :surname, :role, :telephone, :gender, presence: true

        has_one :company
end
