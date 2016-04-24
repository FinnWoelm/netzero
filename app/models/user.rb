class User < ActiveRecord::Base
  
  has_secure_password
  
  attr_accessor :plain_password
  
  has_many :commitments
  
  validates :name, presence: true
  validates :email, uniqueness: {message: "address is already in use"}
  #, format: {with: /.*@.*naropa.edu/, message: "is not a valid @students.naropa.edu or @naropa.edu email address"}
  
  after_create :send_welcome_email_to_user
  
  def generate_username
    if email.index('@')
      return email[0, email.index('@')]
    else
      return email
    end
  end
  
  
  private
  
  # welcome user by email
  def send_welcome_email_to_user
    UserMailer.welcome(self.name, self.email, self.plain_password).deliver_later
  end
  
end
