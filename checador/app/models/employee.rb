class Employee < ApplicationRecord
  belongs_to :admin, :company
end
