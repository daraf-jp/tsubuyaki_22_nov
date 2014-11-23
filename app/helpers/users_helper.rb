module UsersHelper
  def render_user_screen_name user
    if user.screen_name.blank?
      user.name
    else
      user.screen_name
    end
  end
end
