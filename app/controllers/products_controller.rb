class ProductsController < InheritedResources::Base
  def index
    @products = Product.order('position').limit(10)
    respond_to do |format|
      format.html # index.html.erb
      format.mobile #index.mobile.erb
      format.json { render json: @products }
    end
  end
end
