class Employee < ApplicationRecord
  belongs_to :admin
  belongs_to :company
  has_many :employee_registers
end
