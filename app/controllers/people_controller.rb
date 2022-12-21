class PeopleController < ApplicationController
  before_action :authenticate
  def index
    @people = current_user.people.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    @person.user = current_user
    respond_to do |format|
      if @person.save
        format.js
        format.html do
          redirect_to @person, notice: "person was successfully created"
        end
        format.json { render :show, status: :created, location: @person }
      else
        format.js
        format.html { render :new }
        format.json do
          render json: @person.errors, status: :unprocessable_entity
        end
      end
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    respond_to do |format|
      if @person.update(person_params)
        format.html do
          redirect_to @person, notice: "person was successfully updated"
        end
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :edit }
        format.json do
          render json: @person.errors, status: :unprocessable_entity
        end
      end
    end
  end

  def delete
    @person = Person.find(params[:id])
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    respond_to do |format|
      format.html do
        redirect_to people_url, notice: "person was successfully deleted"
      end
      format.json { head :no_content }
    end
  end

  private

  def person_params
    params.require(:person).permit(
      %i[salutation first_name middle_name last_name ssn dob comment user_id]
    )
  end
end
