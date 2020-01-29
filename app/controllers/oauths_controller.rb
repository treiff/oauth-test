class OauthsController < ApplicationController
  def index; end

  def callback
    resp = HTTParty.post token_url
    render json: resp
  end

  private

  def token_url
      "#{ENV['TOKEN_URL']}?client_id=#{ENV['APPLICATION_ID']}&client_secret=#{ENV['APPLICATION_SECRET']}&code=#{params['code']}&grant_type=authorization_code&redirect_uri=#{CGI.escape(ENV['CALLBACK_URL'])}"
  end
end
