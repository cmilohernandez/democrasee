class Vote < ActiveRecord::Base
  
  has_one :bill
  has_one :congressman
  
end
