require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  test "visit index" do
    visit people_url
    assert_selector "h2", text: "People"
  end
end
