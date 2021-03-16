class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :username
      t.date :date_of_birth
      t.string :gender
      t.string :phone_number

      t.timestamps
    end
  end
end
