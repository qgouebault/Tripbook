class SearchController < ApplicationController
  def index
    @q = TravelLog.ransack(params[:q])
    @travel_logs = @q.result.includes(:jours)
    #.page(params[:page])
  end
end
