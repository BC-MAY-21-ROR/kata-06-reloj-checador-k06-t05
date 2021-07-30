class Employee < ApplicationRecord
  belongs_to :admin
  belongs_to :company
end
