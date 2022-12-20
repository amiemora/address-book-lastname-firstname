require "test_helper"

class AddressTest < ActiveSupport::TestCase
  test "has a valid factory" do
    address = FactoryBot.build :address

    assert address.valid?
    #Passes test
  end

  test "requires a user" do
    address = FactoryBot.build :address
    address.user = nil

    refute address.valid?
    #Passes test
  end

  test "require a street,town, & zip" do
    address = FactoryBot.build :address
    address.street = ""
    address.town = ""
    address.zip = ""

    refute address.valid?
    #Passes test
  end
end
