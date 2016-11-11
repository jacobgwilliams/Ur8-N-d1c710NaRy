def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end

def logged_in?
  current_user != nil
end

def require_login
  redirect '/sessions/new' unless logged_in?
end

def l33t_username
  require_login
  username = current_user.username.split.join("+")
  response = Unirest.get "https://montanaflynn-l33t-sp34k.p.mashape.com/encode?text=#{username}",
  headers:{
    "X-Mashape-Key" => "lXGPLVSl4Wmshz5shjSmDsGIqYRbp1twZxWjsnzU4ZoARA8RtB",
    "Accept" => "text/plain"
  }
  response.body
end

def l33t_greet
  "w3LC0m3, " + l33t_username
end
