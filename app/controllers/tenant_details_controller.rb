class TenantDetailsController < ApplicationController
  before_action :set_tenant_detail, only: %i[ show edit update destroy ]

  # GET /tenant_details or /tenant_details.json
  def index
    @tenant_details = TenantDetail.all
  end

  # GET /tenant_details/1 or /tenant_details/1.json
  def show
  end

  # GET /tenant_details/new
  def new
    @tenant_detail = TenantDetail.new
    @user_options = User.all

  end

  # GET /tenant_details/1/edit
  def edit
  end

  # POST /tenant_details or /tenant_details.json
  def create
    @tenant_detail = TenantDetail.new(tenant_detail_params)

    respond_to do |format|
      if @tenant_detail.save
        format.html { redirect_to @tenant_detail, notice: "Tenant detail was successfully created." }
        format.json { render :show, status: :created, location: @tenant_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tenant_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tenant_details/1 or /tenant_details/1.json
  def update
    respond_to do |format|
      if @tenant_detail.update(tenant_detail_params)
        format.html { redirect_to @tenant_detail, notice: "Tenant detail was successfully updated." }
        format.json { render :show, status: :ok, location: @tenant_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tenant_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tenant_details/1 or /tenant_details/1.json
  def destroy
    @tenant_detail.destroy
    respond_to do |format|
      format.html { redirect_to tenant_details_url, notice: "Tenant detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenant_detail
      @tenant_detail = TenantDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tenant_detail_params
      params.require(:tenant_detail).permit(:user_id, :name, :cid, :village, :gewog, :dzongkhag, :total_family_memeber, :phone_no)
    end
end
