class CustomMilitaryHatsController < ApplicationController
  before_action :set_custom_military_hat, only: [:show, :edit, :update, :destroy]

  # GET /custom_military_hats
  # GET /custom_military_hats.json
  def index
    @custom_military_hats = CustomMilitaryHat.all
  end

  # GET /custom_military_hats/1
  # GET /custom_military_hats/1.json
  def show
  end

  # GET /custom_military_hats/new
  def new
    @custom_military_hat = CustomMilitaryHat.new
  end

  # GET /custom_military_hats/1/edit
  def edit
  end

  # POST /custom_military_hats
  # POST /custom_military_hats.json
  def create
    @custom_military_hat = CustomMilitaryHat.new(custom_military_hat_params)

    respond_to do |format|
      if @custom_military_hat.save
        format.html { redirect_to @custom_military_hat, notice: 'Custom military hat was successfully created.' }
        format.json { render :show, status: :created, location: @custom_military_hat }
      else
        format.html { render :new }
        format.json { render json: @custom_military_hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_military_hats/1
  # PATCH/PUT /custom_military_hats/1.json
  def update
    respond_to do |format|
      if @custom_military_hat.update(custom_military_hat_params)
        format.html { redirect_to @custom_military_hat, notice: 'Custom military hat was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_military_hat }
      else
        format.html { render :edit }
        format.json { render json: @custom_military_hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_military_hats/1
  # DELETE /custom_military_hats/1.json
  def destroy
    @custom_military_hat.destroy
    respond_to do |format|
      format.html { redirect_to custom_military_hats_url, notice: 'Custom military hat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_military_hat
      @custom_military_hat = CustomMilitaryHat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_military_hat_params
      params.require(:custom_military_hat).permit(:title, :logo, :image, :back_image, :left_image, :right_image, :price)
    end
end
