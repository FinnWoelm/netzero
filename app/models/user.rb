class User < ActiveRecord::Base
  
  has_secure_password
  
  has_many :commitments
  
  validates :name, presence: true
  validates :email, uniqueness: {message: "address is already in use"}, format: {with: /.*@.*naropa.edu/, message: "is not a valid @students.naropa.edu or @naropa.edu email address"}
  
end
