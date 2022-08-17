module SessionsHelper
    def log_in home_path, user
        session[:user_id] = user.id
      end

      def log_out
        session.delete :user_id
      end
end
