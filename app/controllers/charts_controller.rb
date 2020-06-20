class ChartsController < ApplicationController

  def new
    @chart = Chart.new
  end
  
  def create
    Chart.create(chart_params)
  end



  private
  def chart_params
    params.require(:chart).permit(:name,:image,:text)
  end
  
end
