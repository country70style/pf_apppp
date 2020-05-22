class LikesController < ApplicationController
  def create
    @post_like = Post.find(params[:post_id_for_like])
    binding.pry
    @alreadylike = Like.find_by(ip: request.remote_ip, weapon_id: params[:weapon_id])
    if @alreadylike
      redirect_back(fallback_location: root_path)
      flash[:notice] = "すでにいいねしています"
    else
      @like = Like.create(weapon_id: params[:weapon_id], ip: request.remote_ip)
      redirect_back(fallback_location: root_path)
    end
  end

  private   
  # Only allow a list of trusted parameters through.
  def like_params
    params.require(:like).permit(:weapon_id)
  end
end
