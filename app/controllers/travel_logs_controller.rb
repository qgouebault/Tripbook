class TravelLogsController < ApplicationController
  before_action :set_travel_log, only: [:show, :edit, :update, :destroy]

  # GET /travel_logs
  # GET /travel_logs.json
  def index
    @travel_logs = current_user.travel_logs
  end

  # GET /travel_logs/1
  # GET /travel_logs/1.json
  def show
  end

  # GET /travel_logs/new
  def new
    @travel_log = TravelLog.new
  end

  # GET /travel_logs/1/edit
  def edit
  end

  # POST /travel_logs
  # POST /travel_logs.json
  def create
    @travel_log = TravelLog.new(travel_log_params)

    respond_to do |format|
      if @travel_log.save
        format.html { redirect_to @travel_log, notice: 'Travel log was successfully created.' }
        format.json { render :show, status: :created, location: @travel_log }
      else
        format.html { render :new }
        format.json { render json: @travel_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_logs/1
  # PATCH/PUT /travel_logs/1.json
  def update
    respond_to do |format|
      if @travel_log.update(travel_log_params)
        format.html { redirect_to @travel_log, notice: 'Travel log was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_log }
      else
        format.html { render :edit }
        format.json { render json: @travel_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_logs/1
  # DELETE /travel_logs/1.json
  def destroy
    @travel_log.destroy
    respond_to do |format|
      format.html { redirect_to travel_logs_url, notice: 'Travel log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_log
      @travel_log = TravelLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_log_params
      params.require(:travel_log).permit(:title, :description, :user_id)
    end
end
