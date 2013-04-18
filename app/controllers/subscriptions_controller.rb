class SubscriptionsController < InheritedResources::Base
  # respond_to :html, :xml, :json, :mobile

  def new
    @subscription = Subscription.new
    @user = @subscription.build_user
    @product = Product.find(params[:product_id]) if params[:product_id]
  end

  def create
    @subscription = Subscription.new(params[:subscription])
    if @subscription.save
      SubscriptionMailer.subscription_confirmation(@subscription).deliver
      redirect_to root_path, notice: 'Wij hebben uw aanmelding ontvangen!'
    else
      flash[:alert] = "Er is een probleem met uw aanmelding!"
      render :action => 'new'
    end
  end
end
