module SessionsHelper
  def login(user)
    session[:user_id] = user.id
    @current_user = user
  end
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def authenticate!
    redirect_to('/') unless logged_in?
  end

  def logged_in?
    current_user
  end

  def logout
    @current_user = session[:user_id] = nil
  end
  def id_authentic?
    params[:id].to_s == current_user[:id].to_s
  end

  def is_current_user_owner?(resource)
    resource.user == current_user
  end
end
