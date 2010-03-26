class User < ActiveRecord::Base
  include Clearance::User
  
  validates_presence_of :username
  
end
