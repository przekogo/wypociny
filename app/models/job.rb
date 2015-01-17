class Job < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :company

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end