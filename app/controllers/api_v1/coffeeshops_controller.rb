class ApiV1::CoffeeshopsController < ApiController

  #before_action :authenticate_user!, :only => [:create]

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
  
  def show
  
  end

  # GET /api/v1/topics
  def index

  end

  # POST /api/v1/topics
  def create

  end

end