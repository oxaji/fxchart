class ToppageController < ApplicationController

  def index
    @charts = Chart.all
  end

  def new
  end

  def chart_params
    params.require(:chart).permit(:name,:text,:image)
  end
end
