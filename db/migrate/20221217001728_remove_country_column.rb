class RemoveCountryColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :addresses, :country
  end
end
