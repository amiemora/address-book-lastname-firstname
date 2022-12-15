class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :salutation
      t.string :first_name, null: false
      t.string :middle_name
      t.string :last_name, null: false
      t.string :ssn
      t.date :dob
      t.string :comment
      

      t.timestamps
    end
  end
end
