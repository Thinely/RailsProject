class HouseDetailsController < ApplicationController
  before_action :set_house_detail, only: %i[ show edit update destroy ]

  # GET /house_details or /house_details.json
  def index
    @house_details = HouseDetail.all
  end

  # GET /house_details/1 or /house_details/1.json
  def show
  end

  # GET /house_details/new
  def new
    @house_detail = HouseDetail.new
  end

  # GET /house_details/1/edit
  def edit
  end

  # POST /house_details or /house_details.json
  def create
    @house_detail = HouseDetail.new(house_detail_params)

    respond_to do |format|
      if @house_detail.save
        format.html { redirect_to @house_detail, notice: "House detail was successfully created." }
        format.json { render :show, status: :created, location: @house_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @house_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /house_details/1 or /house_details/1.json
  def update
    respond_to do |format|
      if @house_detail.update(house_detail_params)
        format.html { redirect_to @house_detail, notice: "House detail was successfully updated." }
        format.json { render :show, status: :ok, location: @house_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @house_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /house_details/1 or /house_details/1.json
  def destroy
    @house_detail.destroy
    respond_to do |format|
      format.html { redirect_to house_details_url, notice: "House detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house_detail
      @house_detail = HouseDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def house_detail_params
      params.require(:house_detail).permit(:building_no, :no_of_rooms, :no_of_tenants, :location, :parking_space, :monthy_rent, :balcony)
    end
end
