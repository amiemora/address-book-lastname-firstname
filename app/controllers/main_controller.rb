class MainController < ApplicationController
  def index
    @people = current_user.people.all
    @user = current_user
    @addresses = current_user.addresses.all
    @email = current_user.emails.all
    @phone_number = current_user.phone_numbers.all
  end
end
