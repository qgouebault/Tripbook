class JoursController < ApplicationController
  before_action :set_jour, only: [:show, :edit, :update, :destroy]

  # GET /jours
  # GET /jours.json
  def index
    @jours = current_user.travel_logs.jours
  end

  # GET /jours/1
  # GET /jours/1.json
  def show
  end

  # GET /jours/new
  def new
    @jour = Jour.new
  end

  # GET /jours/1/edit
  def edit
  end

  # POST /jours
  # POST /jours.json
  def create
    @jour = Jour.new(jour_params)

    respond_to do |format|
      if @jour.save
        format.html { redirect_to @jour, notice: 'Jour was successfully created.' }
        format.json { render :show, status: :created, location: @jour }
      else
        format.html { render :new }
        format.json { render json: @jour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jours/1
  # PATCH/PUT /jours/1.json
  def update
    respond_to do |format|
      if @jour.update(jour_params)
        format.html { redirect_to @jour, notice: 'Jour was successfully updated.' }
        format.json { render :show, status: :ok, location: @jour }
      else
        format.html { render :edit }
        format.json { render json: @jour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jours/1
  # DELETE /jours/1.json
  def destroy
    @jour.destroy
    respond_to do |format|
      format.html { redirect_to jours_url, notice: 'Jour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jour
      @jour = Jour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jour_params
      params.require(:jour).permit(:name, :description, :date, :avatar)
    end
end
