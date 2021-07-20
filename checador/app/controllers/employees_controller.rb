class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end
  
  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.save
    redirect_to employees_path
  end

  def edit
    set_employee
  end

  def update
    set_employee
    @employee.update(employee_params)
  end

  def destroy
    set_employee
    @employee.destroy

    redirect_to employees_path
  end


  private
  def employee_params
    params.require(:employee).permit(:email, :name, :position, :employee_num, :private_number)
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end

end
