def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end

def logged_in?
  current_user != nil
end

def require_login
  redirect '/sessions/new' unless logged_in?
end

def l33tify(term_or_phrase)
  convertable_thing = term_or_phrase.split.join("+")
  response = Unirest.get "https://montanaflynn-l33t-sp34k.p.mashape.com/encode?text=#{convertable_thing}",
  headers:{
    "X-Mashape-Key" => "lXGPLVSl4Wmshz5shjSmDsGIqYRbp1twZxWjsnzU4ZoARA8RtB",
    "Accept" => "text/plain"
  }
  response.body
end

def l33t_username
  require_login
  l33tify(current_user.username)
end

def l33t_greet
  l33tify("welcome") + ", " + l33t_username
end
