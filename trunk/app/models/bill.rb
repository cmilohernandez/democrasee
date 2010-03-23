class Bill < ActiveRecord::Base
  
  has_and_belongs_to_many :congressmen
  has_many :votes
  
end
