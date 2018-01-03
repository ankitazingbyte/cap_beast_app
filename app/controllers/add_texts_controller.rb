class AddTextsController < ApplicationController
  before_action :set_add_text, only: [:show, :edit, :update, :destroy]

  # GET /add_texts
  # GET /add_texts.json
  def index
    @add_texts = AddText.all
  end

  # GET /add_texts/1
  # GET /add_texts/1.json
  def show
  end

  # GET /add_texts/new
  def new
    @add_text = AddText.new
  end

  # GET /add_texts/1/edit
  def edit
  end

  # POST /add_texts
  # POST /add_texts.json
  def create
    @add_text = AddText.new(add_text_params)

    respond_to do |format|
      if @add_text.save
        format.html { redirect_to @add_text, notice: 'Add text was successfully created.' }
        format.json { render :show, status: :created, location: @add_text }
      else
        format.html { render :new }
        format.json { render json: @add_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_texts/1
  # PATCH/PUT /add_texts/1.json
  def update
    respond_to do |format|
      if @add_text.update(add_text_params)
        format.html { redirect_to @add_text, notice: 'Add text was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_text }
      else
        format.html { render :edit }
        format.json { render json: @add_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_texts/1
  # DELETE /add_texts/1.json
  def destroy
    @add_text.destroy
    respond_to do |format|
      format.html { redirect_to add_texts_url, notice: 'Add text was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_text
      @add_text = AddText.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_text_params
      params.require(:add_text).permit(:text)
    end
end
