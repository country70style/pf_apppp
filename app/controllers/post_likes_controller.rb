class PostLikesController < ApplicationController
  def create
    @posts = Post.all.order(created_at: :desc).page(params[:page]).per(5)
    @alreadylike = PostLike.find_by(ip: request.remote_ip, post_id: params[:post_id])
    if @alreadylike
      redirect_back(fallback_location: root_path)
      flash[:notice] = "すでにいいねしています"
    else
      @like = PostLike.create(post_id: params[:post_id], ip: request.remote_ip)
      redirect_back(fallback_location: root_path)
    end
  end
end
