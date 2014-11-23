class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    email    = params_user[:email]
    password = params_user[:password]

    if login(email, password)
      redirect_to root_url, notice: "サインインしました"
    else
      @user = User.new(email: email)
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, notice: "サインアウトしました"
  end

  private

  def params_user
    params.require(:user).permit(:email, :password)
  end
end
