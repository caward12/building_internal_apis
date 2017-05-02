#could also wrap in:
# module Api
#   module V1
  #   class ItemsController < ApplicationController
  #   end
  # end
# end

class Api::V1::ItemsController < ApplicationController

  def index
    render json: Item.all
  end

  def show
    render json: Item.find(params[:id])
  end

  def create
    render json: Item.create(item_params)
  end

private

  def item_params
    params.require(:item).permit(:name, :description)
  end

end