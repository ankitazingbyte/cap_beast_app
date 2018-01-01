class CustomBeaniesController < ApplicationController
  before_action :set_custom_beany, only: [:show, :edit, :update, :destroy]

  # GET /custom_beanies
  # GET /custom_beanies.json
  def index
    @custom_beanies = CustomBeanie.all
  end

  # GET /custom_beanies/1
  # GET /custom_beanies/1.json
  def show
  end

  # GET /custom_beanies/new
  def new
    @custom_beany = CustomBeanie.new
  end

  # GET /custom_beanies/1/edit
  def edit
  end

  # POST /custom_beanies
  # POST /custom_beanies.json
  def create
    @custom_beany = CustomBeanie.new(custom_beany_params)

    respond_to do |format|
      if @custom_beany.save
        format.html { redirect_to @custom_beany, notice: 'Custom beanie was successfully created.' }
        format.json { render :show, status: :created, location: @custom_beany }
      else
        format.html { render :new }
        format.json { render json: @custom_beany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_beanies/1
  # PATCH/PUT /custom_beanies/1.json
  def update
    respond_to do |format|
      if @custom_beany.update(custom_beany_params)
        format.html { redirect_to @custom_beany, notice: 'Custom beanie was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_beany }
      else
        format.html { render :edit }
        format.json { render json: @custom_beany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_beanies/1
  # DELETE /custom_beanies/1.json
  def destroy
    @custom_beany.destroy
    respond_to do |format|
      format.html { redirect_to custom_beanies_url, notice: 'Custom beanie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_beany
      @custom_beany = CustomBeanie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_beany_params
      params.require(:custom_beany).permit(:title, :logo, :image, :back_image, :left_image, :right_image, :price)
    end
end
