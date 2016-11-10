get '/' do
  erb :index
end

post '/search' do
  @term = params[:term]
  @term = @term.split.join("+")
  response = Unirest.get "https://mashape-community-urban-dictionary.p.mashape.com/define?term=#{@term}",
  headers:{
    "X-Mashape-Key" => "lXGPLVSl4Wmshz5shjSmDsGIqYRbp1twZxWjsnzU4ZoARA8RtB",
    "Accept" => "text/plain"
  }
  @term = response.body["list"][0]["word"]
  @definition = response.body["list"][0]["definition"]
  erb :'index'
end
