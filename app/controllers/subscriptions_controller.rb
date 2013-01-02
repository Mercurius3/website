class SubscriptionsController < InheritedResources::Base
  respond_to :html, :xml, :json, :mobile
  
  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(params[:subscription])
    if @subscription.save
      SubscriptionMailer.subscription_confirmation(@subscription).deliver  
      redirect_to root_path, notice: 'Wij hebben uw aanmelding ontvangen!'
    else
      flash[:alert] = "trouble"
      render :action => 'new'
    end
  end

end
