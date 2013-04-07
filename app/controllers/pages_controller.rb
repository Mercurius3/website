class PagesController < InheritedResources::Base
  # include Mobylette::RespondToMobileRequests

  def show
    @page = Page.find_by_permalink!(params[:id])
    # fresh_when etag: @page
    # if stale? etag: @page, last_modified: @page.updated_at
    # expires_in 4.weeks
    # if stale? @page, public: true
    #   respond_to do |format|
    #     format.html # show.html.erb
    #     format.mobile #show.mobile.erb
    #     format.json { render json: @page }
    #   end
    # end
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
