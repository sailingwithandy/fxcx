class CurrenciesController < ApplicationController
  def index
    title = "Currency Title"
    @currencies = Currency.all 
  end

  def new
    @currency = Currency.new
  end

  def show 
    @currency = Currency.find(params[:id])
  end

  def create
    @currency = Currency.new(currency_params)
    if @currency.save
      redirect_to root_path
    else
      render 'currency/new' 
    end
  end


  def currency_params
    params.require(:currency).permit(:money)
  end
end
