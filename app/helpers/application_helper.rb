module ApplicationHelper
  def authorization_url
    "#{ENV['AUTH_URL']}?client_id=#{ENV['APPLICATION_ID']}&redirect_uri=#{CGI.escape(ENV['CALLBACK_URL'])}&response_type=code"
  end
end
