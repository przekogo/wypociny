class Company < ActiveRecord::Base

  validates :company_name, :company_description, presence: true
  
  belongs_to :user
end