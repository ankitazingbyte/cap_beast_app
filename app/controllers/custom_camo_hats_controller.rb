class CustomCamoHatsController < ApplicationController
  before_action :set_custom_camo_hat, only: [:show, :edit, :update, :destroy]

  # GET /custom_camo_hats
  # GET /custom_camo_hats.json
  def index
    @custom_camo_hats = CustomCamoHat.all
  end

  # GET /custom_camo_hats/1
  # GET /custom_camo_hats/1.json
  def show
  end

  # GET /custom_camo_hats/new
  def new
    @custom_camo_hat = CustomCamoHat.new
  end

  # GET /custom_camo_hats/1/edit
  def edit
  end

  # POST /custom_camo_hats
  # POST /custom_camo_hats.json
  def create
    @custom_camo_hat = CustomCamoHat.new(custom_camo_hat_params)

    respond_to do |format|
      if @custom_camo_hat.save
        format.html { redirect_to @custom_camo_hat, notice: 'Custom camo hat was successfully created.' }
        format.json { render :show, status: :created, location: @custom_camo_hat }
      else
        format.html { render :new }
        format.json { render json: @custom_camo_hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_camo_hats/1
  # PATCH/PUT /custom_camo_hats/1.json
  def update
    respond_to do |format|
      if @custom_camo_hat.update(custom_camo_hat_params)
        format.html { redirect_to @custom_camo_hat, notice: 'Custom camo hat was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_camo_hat }
      else
        format.html { render :edit }
        format.json { render json: @custom_camo_hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_camo_hats/1
  # DELETE /custom_camo_hats/1.json
  def destroy
    @custom_camo_hat.destroy
    respond_to do |format|
      format.html { redirect_to custom_camo_hats_url, notice: 'Custom camo hat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_camo_hat
      @custom_camo_hat = CustomCamoHat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_camo_hat_params
      params.require(:custom_camo_hat).permit(:title, :logo, :image, :back_image, :left_image, :right_image, :price)
    end
end
