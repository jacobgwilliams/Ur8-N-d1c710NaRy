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
  # binding.pry
  if response.body["result_type"] == "no_results"
    @term = "no results"
    @definition = "try again, noob"
  else
    @term = response.body["list"][0]["word"]
    @definition = response.body["list"][0]["definition"]
  end
  @l33t_term = @term
  @l33t_term = @l33t_term.split.join("+")
  response = Unirest.get "https://montanaflynn-l33t-sp34k.p.mashape.com/encode?text=#{@l33t_term}",
  headers:{
    "X-Mashape-Key" => "lXGPLVSl4Wmshz5shjSmDsGIqYRbp1twZxWjsnzU4ZoARA8RtB",
    "Accept" => "text/plain"
  }
  @l33t_term = response.body

  @l33t_definition = @definition
  @l33t_definition = @l33t_definition.split.join("+")
  response = Unirest.get "https://montanaflynn-l33t-sp34k.p.mashape.com/encode?text=#{@l33t_definition}",
  headers:{
    "X-Mashape-Key" => "lXGPLVSl4Wmshz5shjSmDsGIqYRbp1twZxWjsnzU4ZoARA8RtB",
    "Accept" => "text/plain"
  }

  @l33t_definition = response.body
  erb :'index'
end
