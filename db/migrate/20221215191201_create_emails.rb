class CreateEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :emails do |t|
      t.integer :person_id
      t.string :email_address, null: false
      t.string :comment

      t.timestamps
    end
  end
end
