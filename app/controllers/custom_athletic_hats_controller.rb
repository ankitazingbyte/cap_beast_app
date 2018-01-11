class CustomAthleticHatsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_custom_athletic_hat, only: [:show, :edit, :update, :destroy]

  # GET /custom_athletic_hats
  # GET /custom_athletic_hats.json
  def index
    @custom_athletic_hats = CustomAthleticHat.all
    @order_item = current_order.order_items.new
  end

  # GET /custom_athletic_hats/1
  # GET /custom_athletic_hats/1.json
  def show
     @order_item = current_order.order_items.new
    @add_texts = AddText.all
    @upload_logos = UploadLogo.all
  end

  # GET /custom_athletic_hats/new
  def new
    @custom_athletic_hat = CustomAthleticHat.new
  end

  # GET /custom_athletic_hats/1/edit
  def edit
  end

  # POST /custom_athletic_hats
  # POST /custom_athletic_hats.json
  def create
    @custom_athletic_hat = CustomAthleticHat.new(custom_athletic_hat_params)

    respond_to do |format|
      if @custom_athletic_hat.save
        format.html { redirect_to @custom_athletic_hat, notice: 'Custom athletic hat was successfully created.' }
        format.json { render :show, status: :created, location: @custom_athletic_hat }
      else
        format.html { render :new }
        format.json { render json: @custom_athletic_hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_athletic_hats/1
  # PATCH/PUT /custom_athletic_hats/1.json
  def update
    respond_to do |format|
      if @custom_athletic_hat.update(custom_athletic_hat_params)
        format.html { redirect_to @custom_athletic_hat, notice: 'Custom athletic hat was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_athletic_hat }
      else
        format.html { render :edit }
        format.json { render json: @custom_athletic_hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_athletic_hats/1
  # DELETE /custom_athletic_hats/1.json
  def destroy
    @custom_athletic_hat.destroy
    respond_to do |format|
      format.html { redirect_to custom_athletic_hats_url, notice: 'Custom athletic hat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_athletic_hat
      @custom_athletic_hat = CustomAthleticHat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_athletic_hat_params
      params.require(:custom_athletic_hat).permit(:title, :logo, :image, :back_image, :left_image, :right_image, :price, :product_detail, :order_id, :cart_id, :category_id, :quantity, :text)
    end
end
