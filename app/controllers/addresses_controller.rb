class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end

  def show
    @address = Address.find(params[:id])
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    respond_to do |format|
      if @address.save
        format.html { redirect_to @address, notice: "Address was successfully created" }
        format.json { render :show, status: :created, location: @address }
      else
        format.html { render :new }
        format.json { render json: @address.errors, status: :unprocessable_entity }
        end
      end
      
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    respond_to do |format|
      if @address.update(address_params)
        format.html { redirect_to @address, notice: "address was successfully updated" }
        format.json { render :show, status: :created, location: @address }
      else
        format.html { render :edit }
        format.json { render json: @address.errors, status: :unprocessable_entity }
        end
      end
  end

  
  def delete
    @address = Address.find(params[:id])
  end

  def destroy
    @address.destroy
    respond_to do |format|
      format.html { redirect_to addresses_url, notice: "person was successfully deleted" }
      format.json { head :no_content }
    end
  end

  private

  def address_params
    params.require(:address).permit(
      :person_id,
      :street,
      :town,
      :zip,
      :state,
      :country
    )
  end
end
