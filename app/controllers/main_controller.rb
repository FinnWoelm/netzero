class MainController < ApplicationController
  
  # homepage
  def index
    @layout_fluid = true
  end
  
  # user is shown the next question
  def show_question
    @question = Question.find(params[:id])
    @answer = Answer.new
  end
  
  # user submits answer to a question
  def submit_answer
    
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:id])
    @answer.question = @question
    
    # go to next question
    if @answer.question.next != nil
      redirect_to show_question_path(@answer.question.next)
     
    # otherwise go to evaluation
    else
      redirect_to show_results_path
    end
    
    # try to save the answer...
    
#    if @answer.save
#      
#      # if there is another question, go there...
#      if @answer.question.next != nil
#        redirect_to show_question_path(@answer.question.next)
#        
#      # otherwise go to evaluation
#      else
#        redirect_to show_results_path
#      end
#    
#    # if saving failed, show question again
#    else
#      render 'show_question'
#    end
  end
  
  # user has finished calculator and is now shown results
  def show_results
  end
  
  def show_commitments
    @reduction_options = ReductionOption.all
  end
  
  def submit_commitments
    redirect_to congratulate_path
  end
  
  def congratulate
    
  end
  
  private
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:answer)
    end
  
end
