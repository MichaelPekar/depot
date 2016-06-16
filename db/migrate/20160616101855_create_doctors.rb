class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :specialization

      t.timestamps null: false
    end
  end
end
