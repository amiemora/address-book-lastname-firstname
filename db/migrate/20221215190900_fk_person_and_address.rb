class FkPersonAndAddress < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses, :people, index:true 
    add_foreign_key :addresses, :people
  end
end
