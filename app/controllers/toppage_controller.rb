class ToppageController < ApplicationController

  def index
    @chart = Chart.find_by(id: params[:id])
    @charts = Chart.all.order(created_at: :desc).page(params[:page]).per(6)
    @likes_count = Like.where(chart_id: @chart).count
  end

  private
  def chart_params
    params.require(:chart).permit(:name,:text,:image)
  end
end
