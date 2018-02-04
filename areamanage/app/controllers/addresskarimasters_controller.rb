class AddresskarimastersController < ApplicationController

  def index
    @addresskarimasters = Addresskarimaster.all.order(cardnumber: 'asc')
  end

  def show
    @addresskarimasters = Addresskarimaster.find(params[:id])
  end

end
