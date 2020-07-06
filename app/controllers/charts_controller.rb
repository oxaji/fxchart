class ChartsController < ApplicationController

  def new
    @chart = Chart.new
  end
  
  def create
    Chart.create(chart_params)
  end

  def show
    @chart = Chart.find(params[:id])
    @like = Like.new
    @likes_count = Like.where(chart_id: @chart.id).count
  end

  def search
    @charts = Chart.search(params[:keyword])
    @likes_count = Like.where(chart_id: @chart).count
  end

  private
  def chart_params
    params.require(:chart).permit(:name,:image,:text,:winlose,:style,:timefoot,:pair,:analyze,:profit)
  end
  
end
