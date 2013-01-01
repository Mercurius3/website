class PagesController < InheritedResources::Base
  include Mobylette::RespondToMobileRequests

  def show
    @page = Page.find_by_permalink!(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.mobile #show.mobile.erb
      format.json { render json: @page }
    end
  end

  def switch_mobile_view
    if session[:mobylette_override] == :force_mobile
      session[:mobylette_override] = :ignore_mobile
    else
      session[:mobylette_override] = :force_mobile
    end
    redirect_to root_path
  end
end
