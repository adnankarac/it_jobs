class User < ActiveRecord::Base
  belongs_to :userType
  has_secure_password
end
