class Company < ActiveRecord::Base

  validates :company_name, :company_description, presence: true
  validates :company_description, length: { minimum: 20 }
  
end