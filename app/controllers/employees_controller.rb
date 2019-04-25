class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def create
    Employee.create(employee_params)
    redirect_to root_path
  end

  def index

  end

  private

  def employee_params
    params.require(:employee).permit(:name, :surname, :position, :summary)
  end
end
