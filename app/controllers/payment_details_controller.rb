class PaymentDetailsController < ApplicationController
  before_action :set_payment_detail, only: %i[ show edit update destroy ]

  # GET /payment_details or /payment_details.json
  def index
    @payment_details = PaymentDetail.all
  end

  # GET /payment_details/1 or /payment_details/1.json
  def show
  end

  # GET /payment_details/new
  def new
    @payment_detail = PaymentDetail.new
  end

  # GET /payment_details/1/edit
  def edit
  end

  # POST /payment_details or /payment_details.json
  def create
    @payment_detail = PaymentDetail.new(payment_detail_params)

    respond_to do |format|
      if @payment_detail.save
        format.html { redirect_to @payment_detail, notice: "Payment detail was successfully created." }
        format.json { render :show, status: :created, location: @payment_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payment_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_details/1 or /payment_details/1.json
  def update
    respond_to do |format|
      if @payment_detail.update(payment_detail_params)
        format.html { redirect_to @payment_detail, notice: "Payment detail was successfully updated." }
        format.json { render :show, status: :ok, location: @payment_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payment_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_details/1 or /payment_details/1.json
  def destroy
    @payment_detail.destroy
    respond_to do |format|
      format.html { redirect_to payment_details_url, notice: "Payment detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_detail
      @payment_detail = PaymentDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payment_detail_params
      params.require(:payment_detail).permit(:tenant_id, :amount, :payment_date, :payment_mode, :payment_month, :image)
    end
end
