class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.belongs_to :type_employee, index: true
      t.belongs_to :company, index: true
      t.integer :salary
      t.timestamps null: false
    end
  end
end
