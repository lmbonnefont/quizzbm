class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def create
    Employee.create(employee_params)
    redirect_to employees_path
  end

  def index
    @employees = Employee.all

    if current_user.answered_questions.length == Question.all.length
      @questions_available = false
    else
      @questions_available = true
    end
  end

  def fame
    @users = User.order(score: :desc)
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :surname, :position, :summary, :photo)
  end
end
