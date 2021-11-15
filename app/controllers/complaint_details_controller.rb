class ComplaintDetailsController < ApplicationController
  before_action :set_complaint_detail, only: %i[ show edit update destroy ]

  # GET /complaint_details or /complaint_details.json
  def index
    @complaint_details = ComplaintDetail.all
  end

  # GET /complaint_details/1 or /complaint_details/1.json
  def show
  end

  # GET /complaint_details/new
  def new
    @complaint_detail = ComplaintDetail.new
  end

  # GET /complaint_details/1/edit
  def edit
  end

  # POST /complaint_details or /complaint_details.json
  def create
    @complaint_detail = ComplaintDetail.new(complaint_detail_params)
    @user_id = Tenant.find(id)
    @complaint_detail.tenant_id =  @user_id
    respond_to do |format|
      if @complaint_detail.save
        format.html { redirect_to @complaint_detail, notice: "Complaint detail was successfully created." }
        format.json { render :show, status: :created, location: @complaint_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @complaint_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complaint_details/1 or /complaint_details/1.json
  def update
    respond_to do |format|
      if @complaint_detail.update(complaint_detail_params)
        format.html { redirect_to @complaint_detail, notice: "Complaint detail was successfully updated." }
        format.json { render :show, status: :ok, location: @complaint_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @complaint_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complaint_details/1 or /complaint_details/1.json
  def destroy
    @complaint_detail.destroy
    respond_to do |format|
      format.html { redirect_to complaint_details_url, notice: "Complaint detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complaint_detail
      @complaint_detail = ComplaintDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def complaint_detail_params
      params.require(:complaint_detail).permit(:tenant_id, :complaint_details, :complaint_date)
    end
end
