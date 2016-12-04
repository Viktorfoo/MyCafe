class ApiV1::CoffeeshopsController < ApiController

  before_action :authenticate_user!, :only => [:create]

  # GET /api/v1/topics/:id
  def all
    render json: Coffeeshop.all.to_json
  end

  def update

    shop = params[:coffeeshops].each do |shop_obj|# {name: "aa", lat: 1.2}
    Coffeeshop.create(name: shop_obj[:name], lat: shop_obj[:lat], long: shop_obj[:long])    
    end

      render text: "OK"
      #why do i need to render text ok?
      #
    end
  def showjson
    String phone_my = ""; 
    shop = params[:coffeeshops].each do |shop_obj|# {name: "aa", lat: 1.2}
    #shop2 = shop_obj[:contact].each do |shop_obj2|#
     
    #format.html {render :text => shop_obj[:name].html_content}
    #  phone_my=shop_obj2[:phone]

#    end
    Coffeeshop.create(name: shop_obj[:name], lat: shop_obj[:lat], long: shop_obj[:long], phone_office: shop_obj[:contact][:phone])    
    
  end
      render text: "OK"
  end
  
  def show4square
    response123 = HTTParty.get('https://api.foursquare.com/v2/venues/search?client_id=ILD5DYYDXBNK3SFMRR4O15U34EDA3YRMB0DM351Z0EJPZSSX&client_secret=FCXPOWELSYKJCHMUDBI3FIR1MOTH51I5KAFPQNPX0EZ2EKEQ&v=20130815&ll=40.7,-74&query=sushi')
    json_body = JSON.parse(response123.body)
      
    render json: json_body
  end



  def show
  
  end

  # GET /api/v1/topics
  def index

  end

  # POST /api/v1/topics
  def create

  end

end