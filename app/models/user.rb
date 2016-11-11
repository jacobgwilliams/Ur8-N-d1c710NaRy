class User < ActiveRecord::Base
  has_many :faved_definitions

  validates :username, presence: true, uniqueness: true

  has_secure_password

  def leet_word
    leet_term = @term.split.join("+")
    response = Unirest.get "https://montanaflynn-l33t-sp34k.p.mashape.com/encode?text=#{@l33t_term}",
    headers:{
      "X-Mashape-Key" => "lXGPLVSl4Wmshz5shjSmDsGIqYRbp1twZxWjsnzU4ZoARA8RtB",
      "Accept" => "text/plain"
    }
    response.body
  end

  def leet_definition
    leet_definition = @definition.split.join("+")
    response = Unirest.get "https://montanaflynn-l33t-sp34k.p.mashape.com/encode?text=#{@l33t_definition}",
    headers:{
      "X-Mashape-Key" => "lXGPLVSl4Wmshz5shjSmDsGIqYRbp1twZxWjsnzU4ZoARA8RtB",
      "Accept" => "text/plain"
    }
    response.body
  end

end
