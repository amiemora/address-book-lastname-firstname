require "test_helper"

class AddressesTest < ActionDispatch::IntegrationTest
  test "Address Index Only shows logged in users list of Addresses" do
    user = login_user
    address1 = FactoryBot.create :address, user: user
    address2 = FactoryBot.create :address, user: user
    address3 = FactoryBot.create :address

    addresses_path

    assert_text address1.street
    assert_text address2.street
    refute page.has_content?(address3.street)
  end
end
