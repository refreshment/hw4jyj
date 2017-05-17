class User < ActiveRecord::Base
  rolify
    has_secure_password 
    validates_uniqueness_of :email 
    validates_uniqueness_of :nickname
    has_many :posts
    has_many :comments
end
