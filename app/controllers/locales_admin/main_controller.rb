module LocalesAdmin
  class MainController < ApplicationController
    before_action :authentication_check

    def index

      @files = Dir.glob Rails.root.join("config", "locales", "**", "*.yml")
    end

    def show
      @file = File.open(params[:file])
    end

    def update
      @file = File.open(params[:file], "w+")
      @file.write(params[:editor])
      @file.read
    end

    def logout
      redirect_to "/", status: 401
    end

    private
      def authentication_check
        authenticate_or_request_with_http_basic do |username, password|
          username.downcase.eql?(LocalesAdmin.username || "iamadmin") && password.eql?(LocalesAdmin.password || "keepitsecret123")
        end
      end
  end
end
