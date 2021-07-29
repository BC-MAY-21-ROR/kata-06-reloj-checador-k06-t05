class CompanyBranch < ApplicationRecord
  has_many :employees
  belongs_to :admin
end
