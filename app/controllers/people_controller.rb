class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html do
          redirect_to @person, notice: "person was successfully created"
        end
        format.json { render :show, status: :created, location: @person }
      else
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
    if @person.update(person_params)
      redirect_to person_path(@person)
    else
      render("edit")
    end
  end

  def delete
    @person = Person.find(params[:id])
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(
      %i[salutation first_name middle_name last_name ssn dob comment]
    )
  end
end
