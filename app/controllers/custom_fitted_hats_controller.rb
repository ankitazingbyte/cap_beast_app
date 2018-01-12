class CustomFittedHatsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_custom_fitted_hat, only: [:show, :edit, :update, :destroy]

  # GET /custom_fitted_hats
  # GET /custom_fitted_hats.json
  def index
    if params[:brand].blank?
      @custom_fitted_hats = CustomFittedHat.all
      @order_item = current_order.order_items.new
    else
      @brand_id =Brand.find_by(name: params[:brand]).id
      @custom_fitted_hats = CustomFittedHat.where(:brand_id => @brand_id)
    end
  end

  # GET /custom_fitted_hats/1
  # GET /custom_fitted_hats/1.json
  def show
    @order_item = current_order.order_items.new
    @add_texts = AddText.all
    @upload_logos = UploadLogo.all
  end

  # GET /custom_fitted_hats/new
  def new
    @custom_fitted_hat = CustomFittedHat.new
    @brands = Brand.all.map{|b| [b.name,b.id]}
  end

  # GET /custom_fitted_hats/1/edit
  def edit
    @brands = Brand.all.map{|b| [b.name,b.id]}
  end

  # POST /custom_fitted_hats
  # POST /custom_fitted_hats.json
  def create
    #@custom_fitted_hat.brand_id = params[:brand_id]
    @custom_fitted_hat = CustomFittedHat.new(custom_fitted_hat_params)

    respond_to do |format|
      if @custom_fitted_hat.save
        format.html { redirect_to @custom_fitted_hat, notice: 'Custom fitted hat was successfully created.' }
        format.json { render :show, status: :created, location: @custom_fitted_hat }
      else
        format.html { render :new }
        format.json { render json: @custom_fitted_hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_fitted_hats/1
  # PATCH/PUT /custom_fitted_hats/1.json
  def update
    @custom_fitted_hat.brand_id = params[:brand_id]

    respond_to do |format|
      if @custom_fitted_hat.update(custom_fitted_hat_params)
        format.html { redirect_to @custom_fitted_hat, notice: 'Custom fitted hat was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_fitted_hat }
      else
        format.html { render :edit }
        format.json { render json: @custom_fitted_hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_fitted_hats/1
  # DELETE /custom_fitted_hats/1.json
  def destroy
    @custom_fitted_hat.destroy
    respond_to do |format|
      format.html { redirect_to custom_fitted_hats_url, notice: 'Custom fitted hat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_fitted_hat
      @custom_fitted_hat = CustomFittedHat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_fitted_hat_params
      params.require(:custom_fitted_hat).permit(:title, :logo, :image, :back_image, :left_image, :right_image, :price, :product_detail, :order_id, :cart_id, :category_id, :quantity, :text)
    end
end
