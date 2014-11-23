class FavoritesController < ApplicationController
  before_filter :require_login

  def create
    @tweet    = Tweet.find(params[:tweet_id])
    @favorite = current_user.favorites.build(tweet: @tweet)

    if @favorite.save
      redirect_to tweets_url, notice: "お気に入りに登録しました"
    else
      redirect_to tweets_url, alert: "このツイートはお気に入りに登録できません"
   end
  end
end
