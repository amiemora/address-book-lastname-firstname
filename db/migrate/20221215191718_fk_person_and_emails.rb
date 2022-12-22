class FkPersonAndEmails < ActiveRecord::Migration[7.0]
  def change
    add_reference :emails, :people, index:true 
    add_foreign_key :emails, :people
  end
end
