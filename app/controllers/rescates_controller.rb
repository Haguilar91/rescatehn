class RescatesController < ApplicationController
  before_action :set_rescate, only: [:show, :edit, :update, :destroy]

  # GET /rescates
  # GET /rescates.json
  def index
    @rescates = Rescate.all
  end

  # GET /rescates/1
  # GET /rescates/1.json
  def show
  end

  # GET /rescates/new
  def new
    @rescate = Rescate.new
  end

  # GET /rescates/1/edit
  def edit
  end

  # POST /rescates
  # POST /rescates.json
  def create
    @rescate = Rescate.new(rescate_params)

    respond_to do |format|
      if @rescate.save
        format.html { redirect_to @rescate, notice: 'Rescate was successfully created.' }
        format.json { render :show, status: :created, location: @rescate }
      else
        format.html { render :new }
        format.json { render json: @rescate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rescates/1
  # PATCH/PUT /rescates/1.json
  def update
    respond_to do |format|
      if @rescate.update(rescate_params)
        format.html { redirect_to @rescate, notice: 'Rescate was successfully updated.' }
        format.json { render :show, status: :ok, location: @rescate }
      else
        format.html { render :edit }
        format.json { render json: @rescate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rescates/1
  # DELETE /rescates/1.json
  def destroy
    @rescate.destroy
    respond_to do |format|
      format.html { redirect_to rescates_url, notice: 'Rescate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rescate
      @rescate = Rescate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rescate_params
      params.require(:rescate).permit(:firstname, :lastname, :childs, :adults, :note, :phone, :status, :latitude, :longitude)
    end
end
