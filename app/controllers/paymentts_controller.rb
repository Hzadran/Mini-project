class PaymenttsController < ApplicationController
  before_action :set_paymentt, only: [:show, :edit, :update, :destroy]

  # GET /paymentts
  # GET /paymentts.json
  def index
    @paymentts = Paymentt.all
  end

  # GET /paymentts/1
  # GET /paymentts/1.json
  def show
  end

  # GET /paymentts/new
  def new
    @paymentt = Paymentt.new
  end

  # GET /paymentts/1/edit
  def edit
  end

  # POST /paymentts
  # POST /paymentts.json
  def create
    @paymentt = Paymentt.new(paymentt_params)

    respond_to do |format|
      if @paymentt.save
        format.html { redirect_to @paymentt, notice: 'Paymentt was successfully created.' }
        format.json { render :show, status: :created, location: @paymentt }
      else
        format.html { render :new }
        format.json { render json: @paymentt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paymentts/1
  # PATCH/PUT /paymentts/1.json
  def update
    respond_to do |format|
      if @paymentt.update(paymentt_params)
        format.html { redirect_to @paymentt, notice: 'Paymentt was successfully updated.' }
        format.json { render :show, status: :ok, location: @paymentt }
      else
        format.html { render :edit }
        format.json { render json: @paymentt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paymentts/1
  # DELETE /paymentts/1.json
  def destroy
    @paymentt.destroy
    respond_to do |format|
      format.html { redirect_to paymentts_url, notice: 'Paymentt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paymentt
      @paymentt = Paymentt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paymentt_params
      params.require(:paymentt).permit(:Amount, :discount_id, :cheque_id, :Total_fee, :Remaining_fee, :pay_date, :studentt_id)
    end
end
