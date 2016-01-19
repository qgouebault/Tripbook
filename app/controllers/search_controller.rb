class SearchController < ApplicationController
  def index
    @q = TravelLog.ransack(params[:q])
    @search_travel_log = @q.result(distinct: true)
  end
end
