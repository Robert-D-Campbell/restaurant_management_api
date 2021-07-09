class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :phone
      t.string :dob
      t.string :picture
      t.string :emergencyContactName
      t.string :emergencyContactPhone
      t.decimal :hourlyRate
      t.decimal :salaryRate
      t.float :payableSickTime
      t.float :payableTimeOff
      
      t.integer :employee_status, default: 0
      
      t.timestamps
    end
  end
end
