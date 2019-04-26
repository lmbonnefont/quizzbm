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
    # @possible_answers = [@question.correct_answer.name]
    # arr = Employee.where.not(id: @possible_answers)
    # arr.sample
    # @possible_answers.push(arr.first.name)
    employees = Employee.all
    @possible_answers = [@question.correct_answer.name, employees.sample.name]
    @possible_answers.shuffle
  end

    def check
      answer_user = params[:answer][:employee]
      current_question = Question.find(current_user.current_question)
      correct_answer = current_question.correct_answer.name
      if answer_user == correct_answer
        current_user.answered_questions.push(current_question.id)
        redirect_to employees_path
      else
        redirect_to questions_path
      end
    end

end
