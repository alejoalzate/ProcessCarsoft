class ApplicationController < ActionController::Base

  before_filter :require_login, :except => [:not_authenticated]
  protect_from_forgery

  #helper_method :current_users_list

  private
  def not_authenticated
    redirect_to login_url, :alert => "Se debe Loguear Primero."
  end

  #def current_users_list
  #    current_users.map {|u| u.email}.join(", ")
  #end

end