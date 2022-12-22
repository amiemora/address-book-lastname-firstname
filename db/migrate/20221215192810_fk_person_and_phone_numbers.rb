class FkPersonAndPhoneNumbers < ActiveRecord::Migration[7.0]
  def change
    add_reference :phone_numbers, :people, index:true 
    add_foreign_key :phone_numbers, :people
  end
end
