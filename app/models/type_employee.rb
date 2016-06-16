class TypeEmployee < ActiveRecord::Base
  has_many :employees

  def self.total_salary(name)
    if name == 'all'
      Employee.sum(:salary)
    else
      find_by(name: name).employees.sum(:salary)
    end
  end
end
