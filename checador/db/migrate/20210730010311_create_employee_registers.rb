class CreateEmployeeRegisters < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_registers do |t|
      t.time :check_in
      t.time :check_out
      t.date :date

      t.timestamps
    end
  end
end
