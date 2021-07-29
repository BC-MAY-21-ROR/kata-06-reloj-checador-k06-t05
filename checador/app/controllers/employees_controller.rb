class EmployeesController < ApplicationController
  before_action :set_employee, only: [:edit, :update, :destroy]
  
  def index
    @employees = Employee.all
  end
  
  def new
    @employees = Employee.new
  end

  def create
    @employees = Employee.new(employee_params)
    @employees.save
    redirect_to employees_path
  end

  def edit
  end

  def update
    @employees.update(employee_params)
  end

  def destroy
    @employees.destroy

    redirect_to employees_path
  end


  private
  def employee_params
    params.require(:employee).permit(:email, :name, :position, :employee_num, :private_number)
  end

  def set_employee
    @employees = Employee.find(params[:id])
  end

end
