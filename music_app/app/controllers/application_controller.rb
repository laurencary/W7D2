class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        return nil if session[:session_token].nil?
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    def logged_in?
        !!current_user
    end

    def login!(user)
        @current_user = user
        session[:session_token] = user.reset_session_token!
    end

    def logout!
        session[:session_token] = nil
        current_user.try(:reset_session_token!)
    end
end
