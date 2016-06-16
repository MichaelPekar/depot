class CreatePacients < ActiveRecord::Migration
  def change
    create_table :pacients do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
