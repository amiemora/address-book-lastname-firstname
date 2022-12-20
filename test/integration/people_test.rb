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
    #Works
  end
end
