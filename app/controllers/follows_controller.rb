class FollowsController < ApplicationController
  before_filter :require_login

  def create
    @user = User.find(params[:user_id])

    if @user.inverse_follows.create(follower: current_user)
      redirect_to request.referer, notice: "フォローしました"
    else
      redirect_to request.referer, alert: "フォローできません"
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    follow = @user.inverse_follows.find_by(follower: current_user.id)
    follow.destroy
    redirect_to request.referer, notice: "フォローを解除しました"
  end
end
