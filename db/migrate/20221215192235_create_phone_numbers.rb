class CreatePhoneNumbers < ActiveRecord::Migration[7.0]
  def change
    create_table :phone_numbers do |t|
      t.integer :person_id

      #Chose string to account for any special characters
      t.string :phone_number, null: false

      t.string :comment

      t.timestamps
    end
  end
end
