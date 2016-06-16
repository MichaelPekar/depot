class Company < ActiveRecord::Base
  has_many :employees

  def managers_total_salary
    employees.type_employee
  end

end
