class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @people = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to people_path
    else
      render("new")
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update(person_params)
      redirect_to person_path(@person)
    else
      render("edit")
    end
  end

  def delete
    @people = Task.find(params[:id])
  end

  def destroy
    @person = Task.find(params[:id])
    @people.destroy
    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(
      %i[salutation first_name middle_name last_name ssn dob comment]
    )
  end
end
