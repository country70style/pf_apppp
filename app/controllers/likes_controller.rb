class LikesController < ApplicationController
    def create
        @weapon = Weapon.find(params[:weapon_id])
        @alreadylike = Like.find_by(ip: request.remote_ip, weapon_id: params[:weapon_id])
        if @alreadylike
           redirect_back(fallback_location: root_path)
           flash[:notice] = "すでにいいねしています"
        else
           @like = Like.create(weapon_id: params[:weapon_id], ip: request.remote_ip)
           redirect_back(fallback_location: root_path)
        end
      end
end
