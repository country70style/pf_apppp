class WeaponLikesController < ApplicationController
  def create
    @weapons = Weapon.all.page(params[:page]).per(10)
    @alreadylike = WeaponLike.find_by(ip: request.remote_ip, weapon_id: params[:weapon_id])
    if @alreadylike
      redirect_back(fallback_location: root_path)
      flash[:notice] = "すでにいいねしています"
    else
      @like = WeaponLike.create(weapon_id: params[:weapon_id], ip: request.remote_ip)
      redirect_back(fallback_location: root_path)
    end
  end

  
end
