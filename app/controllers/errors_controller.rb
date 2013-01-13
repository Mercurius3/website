class ErrorsController < ApplicationController
  def routing
    render template: 'errors/not_found', layout: 'layouts/application', status: 404
  end
end