class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :user_signed_in?, :category_list, :authorize

  private

  def current_user
    User.find_by(id: session[:user_id])
  end

  def user_signed_in?
    !!current_user
  end

  def category_list
    @cats = []
    Category.all.each do |cat|
      @cats.push({:id => cat.id, :title => cat.title})
    end
    return @cats
  end

  def authorize
    redirect_to new_user_path if !user_signed_in?
  end
end
