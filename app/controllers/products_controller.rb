class ProductsController < InheritedResources::Base
  include ProductsHelper

  def index
    @products = Product.where('active == ?', true)
    respond_to do |format|
      format.html # index.html.erb
      format.mobile #index.mobile.erb
      format.json { render json: @products }
    end
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html
      format.ics { render text: @product.to_ics }
    end
  end

  def calendar_feed
    @product = Product.find(params[:id])
    respond_to do |format|
      format.ics { render text: @product.to_ics }
    end
  end
end
