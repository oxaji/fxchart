class ChartsController < ApplicationController

  def new
    @chart = Chart.new
  end
  
  def create
    Chart.create(chart_params)
  end

  def show
    @chart = Chart.find(params[:id])
  end

  private
  def chart_params
    params.require(:chart).permit(:name,:image,:text,:winlose,:style)
  end
  
end
