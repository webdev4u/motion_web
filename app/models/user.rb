class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password, :password_confirmation, :username, :role
  validates_uniqueness_of :email, :username
  validates_presence_of :username, :email, :password, :on => :create

  ROLES = %w[admin operator viewer]
end
