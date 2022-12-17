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
        format.html { redirect_to @person, notice: "person was successfully created" }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
        end
      end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'person was successfully updated' }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def delete
    @person = Person.find(params[:id])
  end

  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'person was successfully deleted' }
      format.json { head :no_content }
    end
  end

  private
  def person_params
    params.require(:person).permit([
      :salutation,
      :first_name,
      :middle_name,
      :last_name,
      :ssn,
      :dob,
      :comment
    ])
  end
end
