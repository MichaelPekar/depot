class AddManagers < ActiveRecord::Migration
  def change
    swan_company_id = Company.find_by(name: 'SWAN').id
    manager_type_id = TypeEmployee.find_or_create_by(name: 'Manager').id
    developer_type_id = TypeEmployee.find_or_create_by(name: 'Developer').id
    qa_type_id = TypeEmployee.find_or_create_by(name: 'Qa').id

    5.times do
      Employee.create(company_id: swan_company_id, type_employee_id: manager_type_id, salary: rand(300..800 ))
    end

    10.times do
      Employee.create(company_id: swan_company_id, type_employee_id: developer_type_id, salary: rand(1000..3000))
    end

    15.times do
      Employee.create(company_id: swan_company_id, type_employee_id: qa_type_id, salary: rand(50..80))
    end
  end
end