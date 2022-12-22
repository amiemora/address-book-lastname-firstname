class EmailsController < ApplicationController
  before_action :authenticate
  def index
    @email = current_user.emails.all
  end

  def show
    @email = Email.find(params[:id])
  end

  def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)
    @email.user = current_user
    respond_to do |format|
      if @email.save
        format.html do
          redirect_to @email, notice: "email was successfully created"
        end
        format.json { render :show, status: :created, location: @email }
      else
        format.html { render :new }
        format.json do
          render json: @email.errors, status: :unprocessable_entity
        end
      end
    end
  end

  def edit
    @email = Email.find(params[:id])
  end

  def update
    @email = Email.find(params[:id])
    respond_to do |format|
      if @email.update(email_params)
        format.html do
          redirect_to @email, notice: "email was successfully updated"
        end
        format.json { render :show, status: :created, location: @email }
      else
        format.html { render :edit }
        format.json do
          render json: @email.errors, status: :unprocessable_entity
        end
      end
    end
  end

  def delete
    @email = Email.find(params[:id])
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html do
        redirect_to emails_url, notice: "email was successfully deleted"
      end
      format.json { head :no_content }
    end
  end

  private

  def email_params
    params.require(:email).permit(%i[person_id email_address comment])
  end
end
