class AddUserIdToPhoneNumbers < ActiveRecord::Migration[7.0]
  def change
    add_column :phone_numbers, :user_id, :integer
  end
end
