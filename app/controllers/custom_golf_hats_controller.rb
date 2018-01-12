class CustomGolfHatsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_custom_golf_hat, only: [:show, :edit, :update, :destroy]

  # GET /custom_golf_hats
  # GET /custom_golf_hats.json
  def index
    if params[:brand].blank?
      @custom_golf_hats = CustomGolfHat.all
      @order_item = current_order.order_items.new
    else
      @brand_id =Brand.find_by(name: params[:brand]).id
      @custom_golf_hats = CustomGolfHat.where(:brand_id => @brand_id)
    end
  end

  # GET /custom_golf_hats/1
  # GET /custom_golf_hats/1.json
  def show
    @order_item = current_order.order_items.new
    @add_texts = AddText.all
    @upload_logos = UploadLogo.all
  end

  # GET /custom_golf_hats/new
  def new
    @custom_golf_hat = CustomGolfHat.new
    @brands = Brand.all.map{|b| [b.name,b.id]}
  end

  # GET /custom_golf_hats/1/edit
  def edit
    @brands = Brand.all.map{|b| [b.name,b.id]}
  end

  # POST /custom_golf_hats
  # POST /custom_golf_hats.json
  def create
    @custom_golf_hat.brand_id = params[:brand_id]
    @custom_golf_hat = CustomGolfHat.new(custom_golf_hat_params)

    respond_to do |format|
      if @custom_golf_hat.save
        format.html { redirect_to @custom_golf_hat, notice: 'Custom golf hat was successfully created.' }
        format.json { render :show, status: :created, location: @custom_golf_hat }
      else
        format.html { render :new }
        format.json { render json: @custom_golf_hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_golf_hats/1
  # PATCH/PUT /custom_golf_hats/1.json
  def update
    @custom_golf_hat.brand_id = params[:brand_id]
    respond_to do |format|
      if @custom_golf_hat.update(custom_golf_hat_params)
        format.html { redirect_to @custom_golf_hat, notice: 'Custom golf hat was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_golf_hat }
      else
        format.html { render :edit }
        format.json { render json: @custom_golf_hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_golf_hats/1
  # DELETE /custom_golf_hats/1.json
  def destroy
    @custom_golf_hat.destroy
    respond_to do |format|
      format.html { redirect_to custom_golf_hats_url, notice: 'Custom golf hat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_golf_hat
      @custom_golf_hat = CustomGolfHat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_golf_hat_params
      params.require(:custom_golf_hat).permit(:title, :logo, :image, :back_image, :left_image, :right_image, :price, :product_detail, :order_id, :cart_id, :category_id, :quantity, :text)
    end
end
