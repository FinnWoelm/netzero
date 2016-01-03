class Answer < ActiveRecord::Base
  belongs_to :question
  
  validates :answer, presence: true
  validates :question, presence: true
end
