class Api::V1::ItemsController < Api::V1::BaseController
  def index
    @items = Item.all
    respond_with @items
  end

  def show
    item = Item.find(params[:id])
    respond_with  params[:id], json:item
  end

  def create
    respond_with :api, :v1, Item.create(item_params)
  end

  def destroy
    respond_with Item.destroy(param[:id])
  end

  def update
    item = Item.find(params['id'])
    item.update_attributes(item_params)
    respond_with item, json: item
  end

  private
  def item_params
    params.require(:item).permit(:id, :name, :description)
  end

end
