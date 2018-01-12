class CustomBeaniesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_custom_beanie, only: [:show, :edit, :update, :destroy]

  # GET /custom_beanies
  # GET /custom_beanies.json
  def index
    if params[:brand].blank?
      @custom_beanies = CustomBeanie.all
      @order_item = current_order.order_items.new
    else
      @brand_id =Brand.find_by(name: params[:brand]).id
      @custom_beanies = CustomBeanie.where(:brand_id => @brand_id)
    end
  end

  # GET /custom_beanies/1
  # GET /custom_beanies/1.json
  def show
    @order_item = current_order.order_items.new
    @add_texts = AddText.all
    @upload_logos = UploadLogo.all
  end

  # GET /custom_beanies/new
  def new
    @custom_beanie = CustomBeanie.new
    @brands = Brand.all.map{|b| [b.name,b.id]}
  end

  # GET /custom_beanies/1/edit
  def edit
    @brands = Brand.all.map{|b| [b.name,b.id]}
  end

  # POST /custom_beanies
  # POST /custom_beanies.json
  def create
    @custom_beanie = CustomBeanie.new(custom_beanie_params)
    @custom_beanie.brand_id = params[:brand_id]
    respond_to do |format|
      if @custom_beanie.save
        format.html { redirect_to @custom_beanie, notice: 'Custom beanie was successfully created.' }
        format.json { render :show, status: :created, location: @custom_beanie }
      else
        format.html { render :new }
        format.json { render json: @custom_beanie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_beanies/1
  # PATCH/PUT /custom_beanies/1.json
  def update
    @custom_beanie.brand_id = params[:brand_id]
    respond_to do |format|
      if @custom_beanie.update(custom_beanie_params)
        format.html { redirect_to @custom_beanie, notice: 'Custom beanie was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_beanie }
      else
        format.html { render :edit }
        format.json { render json: @custom_beanie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_beanies/1
  # DELETE /custom_beanies/1.json
  def destroy
    @custom_beanie.destroy
    respond_to do |format|
      format.html { redirect_to custom_beanies_url, notice: 'Custom beanie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_beanie
      @custom_beanie = CustomBeanie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_beanie_params
      params.require(:custom_beanie).permit(:title, :logo, :image, :back_image, :left_image, :right_image, :price, :product_detail, :order_id, :cart_id, :category_id, :quantity, :text)
    end
end
