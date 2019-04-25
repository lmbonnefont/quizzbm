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
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :surname, :position, :summary, :photo)
  end
end
