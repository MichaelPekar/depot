class CreateTypeEmployees < ActiveRecord::Migration
  def change
    create_table :type_employees do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
