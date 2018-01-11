class CustomBucketHatsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_custom_bucket_hat, only: [:show, :edit, :update, :destroy]

  # GET /custom_bucket_hats
  # GET /custom_bucket_hats.json
  def index
    @custom_bucket_hats = CustomBucketHat.all
    @order_item = current_order.order_items.new
  end

  # GET /custom_bucket_hats/1
  # GET /custom_bucket_hats/1.json
  def show
    @order_item = current_order.order_items.new
    @add_texts = AddText.all
    @upload_logos = UploadLogo.all
  end

  # GET /custom_bucket_hats/new
  def new
    @custom_bucket_hat = CustomBucketHat.new
  end

  # GET /custom_bucket_hats/1/edit
  def edit
  end

  # POST /custom_bucket_hats
  # POST /custom_bucket_hats.json
  def create
    @custom_bucket_hat = CustomBucketHat.new(custom_bucket_hat_params)

    respond_to do |format|
      if @custom_bucket_hat.save
        format.html { redirect_to @custom_bucket_hat, notice: 'Custom bucket hat was successfully created.' }
        format.json { render :show, status: :created, location: @custom_bucket_hat }
      else
        format.html { render :new }
        format.json { render json: @custom_bucket_hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_bucket_hats/1
  # PATCH/PUT /custom_bucket_hats/1.json
  def update
    respond_to do |format|
      if @custom_bucket_hat.update(custom_bucket_hat_params)
        format.html { redirect_to @custom_bucket_hat, notice: 'Custom bucket hat was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_bucket_hat }
      else
        format.html { render :edit }
        format.json { render json: @custom_bucket_hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_bucket_hats/1
  # DELETE /custom_bucket_hats/1.json
  def destroy
    @custom_bucket_hat.destroy
    respond_to do |format|
      format.html { redirect_to custom_bucket_hats_url, notice: 'Custom bucket hat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_bucket_hat
      @custom_bucket_hat = CustomBucketHat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_bucket_hat_params
      params.require(:custom_bucket_hat).permit(:title, :logo, :image, :back_image, :left_image, :right_image, :price, :product_detail, :order_id, :cart_id, :category_id, :quantity, :text)
    end
end
