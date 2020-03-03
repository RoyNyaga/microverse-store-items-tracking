class ItemsController < ApplicationController

	def index
		@items = Item.all
		render json: {
			status: 200,
			items: @items
		}

	end

	def show
		@item = Item.find_by(id: params[:id])
		render json: {
			status: 200,
			items: @item
		}
	end
end
