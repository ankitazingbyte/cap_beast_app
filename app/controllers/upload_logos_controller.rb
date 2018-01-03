class UploadLogosController < ApplicationController
  before_action :set_upload_logo, only: [:show, :edit, :update, :destroy]

  # GET /upload_logos
  # GET /upload_logos.json
  def index
    @upload_logos = UploadLogo.all
  end

  # GET /upload_logos/1
  # GET /upload_logos/1.json
  def show
  end

  # GET /upload_logos/new
  def new
    @upload_logo = UploadLogo.new
  end

  # GET /upload_logos/1/edit
  def edit
  end

  # POST /upload_logos
  # POST /upload_logos.json
  def create
    @upload_logo = UploadLogo.new(upload_logo_params)

    respond_to do |format|
      if @upload_logo.save
        format.html { redirect_to @upload_logo, notice: 'Upload logo was successfully created.' }
        format.json { render :show, status: :created, location: @upload_logo }
      else
        format.html { render :new }
        format.json { render json: @upload_logo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /upload_logos/1
  # PATCH/PUT /upload_logos/1.json
  def update
    respond_to do |format|
      if @upload_logo.update(upload_logo_params)
        format.html { redirect_to @upload_logo, notice: 'Upload logo was successfully updated.' }
        format.json { render :show, status: :ok, location: @upload_logo }
      else
        format.html { render :edit }
        format.json { render json: @upload_logo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upload_logos/1
  # DELETE /upload_logos/1.json
  def destroy
    @upload_logo.destroy
    respond_to do |format|
      format.html { redirect_to upload_logos_url, notice: 'Upload logo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upload_logo
      @upload_logo = UploadLogo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upload_logo_params
      params.require(:upload_logo).permit(:logo)
    end
end
