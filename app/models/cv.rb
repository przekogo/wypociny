class Cv < ActiveRecord::Base

  belongs_to :employee
  has_many :experiences
  has_many :educations
  has_many :languages
  has_many :skills
  has_many :hobbies

end