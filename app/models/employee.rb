class Employee < ActiveRecord::Base
  belongs_to :type_employee
  belongs_to :company
end
