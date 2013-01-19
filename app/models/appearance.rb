class Appearance < ActiveRecord::Base
  attr_accessible :date
  
  validates :date, presence: true, uniqueness: true
  
  has_and_belongs_to_many :people
end
