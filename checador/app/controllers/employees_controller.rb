class EmployeesController < ApplicationController

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
    set_employee
  end

  def update
    set_employee
    @employees.update(employee_params)
  end

  def destroy
    set_employee
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
