class Person < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, presence: true
  
  has_and_belongs_to_many :appearances, uniq: true, :before_add => :only_one_at_an_appearance
  
  def only_one_at_an_appearance(appearance)
    raise ActiveRecord::Rollback if self.appearances.exists? appearance
  end
end
