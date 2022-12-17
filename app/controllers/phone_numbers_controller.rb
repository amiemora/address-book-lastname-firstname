class PhoneNumbersController < ApplicationController
  def index
    @phone_number = PhoneNumber.all
  end

  def show
    @phone_number = PhoneNumber.find(params[:id])
  end

  def new
    @phone_number = PhoneNumber.new
  end

  def create
    @phone_number = PhoneNumber.new(phone_number_params)

    respond_to do |format|
      if @phone_number.save
        format.html do
          redirect_to @phone_number,
                      notice: "phone number was successfully created"
        end
        format.json { render :show, status: :created, location: @phone_number }
      else
        format.html { render :new }
        format.json do
          render json: @phone_number.errors, status: :unprocessable_entity
        end
      end
    end
  end

  def edit
    @phone_number = PhoneNumber.find(params[:id])
  end

  def update
    @phone_number = PhoneNumber.find(params[:id])
    respond_to do |format|
      if @phone_number.update(phone_number_params)
        format.html do
          redirect_to @phone_number,
                      notice: "phone number was successfully updated"
        end
        format.json { render :show, status: :created, location: @phone_number }
      else
        format.html { render :edit }
        format.json do
          render json: @phone_number.errors, status: :unprocessable_entity
        end
      end
    end
  end

  def delete
    @phone_number = PhoneNumber.find(params[:id])
  end

  def destroy
    @phone_number = PhoneNumber.find(params[:id])
    @phone_number.destroy
    respond_to do |format|
      format.html do
        redirect_to phone_numbers_url,
                    notice: "phone number was successfully deleted"
      end
      format.json { head :no_content }
    end
  end

  private

  def phone_number_params
    params.require(:phone_number).permit(%i[person_id phone_number comment])
  end
end
