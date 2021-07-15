class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :email
      t.string :name
      t.string :position
      t.string :employee_num
      t.string :private_number

      t.timestamps
    end
  end
end
