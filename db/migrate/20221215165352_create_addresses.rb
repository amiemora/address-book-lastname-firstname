class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.integer :person_id
      t.string :street, null: false
      t.string :town, null: false
      t.integer :zip, null: false
      t.string :state
      # this allows a list of countries to be stored in the database
      t.string :country, array: true

      t.timestamps
    end
  end
end
