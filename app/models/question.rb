class Question < ActiveRecord::Base
  has_many :answers
  
  def next
    Question.where("id > ?", id).first
  end

  def prev
    Question.where("id < ?", id).last
  end
  
  def to_s
    id.to_s + ") " +title
  end
end
