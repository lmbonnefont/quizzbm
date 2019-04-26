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
    @possible_answers = [@question.correct_answer]
    3.times do
      @possible_answers.push(Employee.where.not(id: @possible_answers))
    end

    def check
      raise
    end

  end
end
