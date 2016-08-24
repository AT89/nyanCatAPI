class ApplicationController < ActionController::API
  def cors_set_access_control_headers
    skip_before_action :verify_authenticity_token
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Allow-Headers'] = '*'
    headers['Access-Control-Max-Age'] = "1728000"
    headers['dataType'] = "json"
  end
end
