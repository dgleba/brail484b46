class ApplicationController < ActionController::Base

  before_action :set_paper_trail_whodunnit

  protect_from_forgery with: :null_session
  
  rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render :text => exception, :status => 500
  end
end
