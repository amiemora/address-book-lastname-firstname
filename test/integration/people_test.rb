require "test_helper"

class PeopleTest < ActionDispatch::IntegrationTest
  test "People Index Only shows logged in users list of People" do
    user = login_user
    person1 = FactoryBot.create :person, user: user
    person2 = FactoryBot.create :person, user: user
    person3 = FactoryBot.create :person

    visit people_path

    assert_text person1.first_name
    assert_text person2.first_name
    refute page.has_content?(person3.first_name)
    #Passes test
  end

  # test "Create a new person test" do
  #   login_user
  #   visit people_path
  #   click_on "Add New Person"

  #   visit new_person_path
  #   fill_in "First Name", with: "New Person"
  #   fill_in "Last Name", with: "Last Name"
  #   click_button "Create Person"

  #   assert_text "Show Page"
  # end
end
