class SubscriptionsController < InheritedResources::Base
  def new
    @subscription = Subscription.new
    respond_to do |format|
      format.html
      format.json { render json: @subscription }
    end
  end

  def create
    @subscription = Subscription.new(params[:subscription])
    
    respond_to do |format|
      if @subscription.save
        SubscriptionMailer.subscription_confirmation(@subscription).deliver  
        format.html { redirect_to root_path, notice: 'Wij hebben uw aanmelding ontvangen!' }
        # format.json { render json: @subscription, status: :created, location: @subscription }
      else
        format.html { render action: "new" }
        # format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

end
