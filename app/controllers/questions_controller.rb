class QuestionsController < ApplicationController
  def show
  end

  def new
  end

  def create
  end

  def index
    user = current_user
    answered = user.answered_questions
    questions = Question.where.not(id: answered)
    @question = questions.sample
    user.current_question = @question.id
    user.save
    @answer = Answer.new
    employees = Employee.where.not(id: @question.correct_answer.id)
    employee = employees.sample
    @possible_answers = ["#{@question.correct_answer.surname} #{@question.correct_answer.name}", "#{employee.surname} #{employee.name}"]
    @possible_answers.shuffle
  end

    def check
      answer_user = params[:answer][:employee]
      current_question = Question.find(current_user.current_question)
      correct_answer = "#{current_question.correct_answer.surname} #{current_question.correct_answer.name}"
      if answer_user == correct_answer
        current_user.answered_questions.push(current_question.id)
        current_user.save
        flash[:correct] = "Correct, Good job! Keep going!"
        redirect_to questions_path
      else
        flash[:incorrect] = "Wrong! Try Again!"
        redirect_to questions_path
      end
    end

end
