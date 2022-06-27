module ApplicationHelper
  def authorization_url
    "#{ENV['AUTH_URL']}?client_id=#{ENV['APPLICATION_ID']}&redirect_uri=#{CGI.escape(ENV['CALLBACK_URL'])}&response_type=code&scope=login+data"
  end

  def refresh_url
    "#{ENV['TOKEN_URL']}?client_id=#{ENV['APPLICATION_ID']}&client_secret=#{ENV['APPLICATION_SECRET']}&refresh_token=123&grant_type=refresh_token&redirect_uri=#{CGI.escape(ENV['CALLBACK_URL'])}"
  end
end

# APPLICATION_ID:           4lwP9Th2B6OxbVZ-TmOeuX6q7IhWtogrzj8SV5D_3cg
# APPLICATION_SECRET:       ueQD5xJ_DUcXlOHLshTNDh-f18pLF8ZxGtfgXVK0MEU
# AUTH_URL:                 https://app.crmworkspaceqa.com/oauth/authorize
# CALLBACK_URL:             https://oauth-test-wb.herokuapp.com/auth/callback
# DATABASE_URL:             postgres://kajebgwapoktml:2f05ea5997177fa9c437d3e9bf5f1f78bc4bf7316896a9804657c6c8c83ab0c1@ec2-52-55-59-250.compute-1.amazonaws.com:5432/da1np1fsc1erol
# LANG:                     en_US.UTF-8
# RACK_ENV:                 production
# RAILS_ENV:                production
# RAILS_LOG_TO_STDOUT:      enabled
# RAILS_SERVE_STATIC_FILES: enabled
# SECRET_KEY_BASE:          257ab92832e248929e218fd73a51962c895ef91d0f60d40c846a19aef008238ba518af015d7f63f2c013e8b1b3a479be6e4eb61c1a6009db3c05b6b8c198d6cb
# TOKEN_URL:                https://app.crmworkspaceqa.com/oauth/token


# https://crm-staging-pr-7897.herokuapp.com
# APPLICATION_ID:           745a580b5a9bef0606875874a3e51757b38dde7279f1c89e6a4acf14394dfaaf
# APPLICATION_SECRET:       84a11392989c957b2adc9700f8cb5ac2fc6794690166ca22ebe81189cd822b07
# AUTH_URL:                 https://crm-staging-pr-7897.herokuapp.com/oauth/authorize
# TOKEN_URL:                https://crm-staging-pr-7897.herokuapp.com/oauth/token

# heroku config:set AUTH_URL=https://app.crmworkspaceqa.com/oauth/authorize TOKEN_URL=https://app.crmworkspaceqa.com/oauth/token APPLICATION_ID=4lwP9Th2B6OxbVZ-TmOeuX6q7IhWtogrzj8SV5D_3cg APPLICATION_SECRET=ueQD5xJ_DUcXlOHLshTNDh-f18pLF8ZxGtfgXVK0MEU CALLBACK_URL=https://oauth-test-wb.herokuapp.com/auth/callback -a oauth-test-wb
