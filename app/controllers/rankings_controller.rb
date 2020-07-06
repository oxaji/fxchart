class RankingsController < ApplicationController

  def index
    @chart = Chart.find_by(id: params[:id])
    @all_ranks = Chart.find(Like.group(:chart_id).order('count(chart_id) desc').limit(10).pluck(:chart_id))
    @likes_count = Like.where(chart_id: @chart).count
  end

  private
  def chart_params
    params.require(:chart).permit(:name,:text,:image)
  end

end
