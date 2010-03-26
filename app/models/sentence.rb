class Sentence < ActiveRecord::Base
  
  belongs_to :sentence
  belongs_to :bill
  
end
