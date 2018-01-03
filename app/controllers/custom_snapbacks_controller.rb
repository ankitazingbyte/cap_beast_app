class CustomSnapbacksController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_custom_snapback, only: [:show, :edit, :update, :destroy]

  # GET /custom_snapbacks
  # GET /custom_snapbacks.json
  def index
    @custom_snapbacks = CustomSnapback.all
    @order_item = current_order.order_items.new
  end

  # GET /custom_snapbacks/1
  # GET /custom_snapbacks/1.json
  def show
    @order_item = current_order.order_items.new
    @add_texts = AddText.all
    @upload_logos = UploadLogo.all
     # @add_text = AddText.find(params[:id])
  end

  # GET /custom_snapbacks/new
  def new
    @custom_snapback = CustomSnapback.new
  end

  # GET /custom_snapbacks/1/edit
  def edit
  end

  # POST /custom_snapbacks
  # POST /custom_snapbacks.json
  def create
    @custom_snapback = CustomSnapback.new(custom_snapback_params)

    respond_to do |format|
      if @custom_snapback.save
        format.html { redirect_to @custom_snapback, notice: 'Custom snapback was successfully created.' }
        format.json { render :show, status: :created, location: @custom_snapback }
      else
        format.html { render :new }
        format.json { render json: @custom_snapback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_snapbacks/1
  # PATCH/PUT /custom_snapbacks/1.json
  def update
    respond_to do |format|
      if @custom_snapback.update(custom_snapback_params)
        format.html { redirect_to @custom_snapback, notice: 'Custom snapback was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_snapback }
      else
        format.html { render :edit }
        format.json { render json: @custom_snapback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_snapbacks/1
  # DELETE /custom_snapbacks/1.json
  def destroy
    @custom_snapback.destroy
    respond_to do |format|
      format.html { redirect_to custom_snapbacks_url, notice: 'Custom snapback was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_snapback
      @custom_snapback = CustomSnapback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_snapback_params
      params.require(:custom_snapback).permit(:image, :logo, :title, :price, :right_image, :left_image, :back_image, :order_id, :cart_id, :category_id, :quantity, :text)
    end
end
