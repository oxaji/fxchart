class LikesController < ApplicationController

  def create
    @chart = Chart.find(params[:chart_id])
    @alreadylike = Like.find_by(ip: request.remote_ip, chart_id: params[:chart_id])
    if @alreadylike
       redirect_back(fallback_location: root_path)
       flash[:notice] = "すでにいいねしています"
    else
       @like = Like.create(chart_id: params[:chart_id], ip: request.remote_ip)
       redirect_back(fallback_location: root_path)
    end
  end

end
