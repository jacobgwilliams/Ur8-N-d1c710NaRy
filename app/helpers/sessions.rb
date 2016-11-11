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

def text_to_image
  # response = Unirest.post "http://api.img4me.com/?text=Testing&font=arial&fcolor=000000&size=10&bcolor=FFA500&type=png",
  # headers:{
  #   "Accept" => "text/plain"
  # }
  # response.body
end

# grabzItClient = GrabzIt::Client.new("YzU3ZDYwZTVhM2JkNDVkZTg4ODA0NzVlNWQ5NTAwNzE=", "ZV8/P35GPz8/Pz8/UiM/P2VNPz8TAT8/JWErPz8/fz8=")
