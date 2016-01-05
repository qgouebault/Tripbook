class WelcomeController < ApplicationController
  def index
    @travel_logs = TravelLog.all
  end
end
