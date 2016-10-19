class ApplicationController < ActionController::API
  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'http://anhtice.com/nyancat'
    headers['Access-Control-Allow-Methods'] = 'POST, GET'
    headers['Access-Control-Allow-Headers'] = '*'
    headers['Access-Control-Max-Age'] = "1728000"
    headers['dataType'] = "json"
  end
end
