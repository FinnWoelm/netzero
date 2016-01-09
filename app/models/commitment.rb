class Commitment < ActiveRecord::Base
  belongs_to :user
  belongs_to :activity
  
  validates :activity, uniqueness: {scope: :user, message: "should only happen once per user"}
end
