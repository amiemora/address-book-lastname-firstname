require "test_helper"

class SitesTest < ActionDispatch::IntegrationTest
  # This test works
  test "home page works" do
    visit root_path
    assert_selector "h1", text: "Home Page"
  end
  # Passed

  # NOW lets test it NOT working
  # I will test the Index Page of the Addresses for something I know isnt there just be check
  # test "Home Page not working" do
  #   visit root_path
  #   assert_selector "h1", text: "Wrong"
  # end
  # Fails
end
