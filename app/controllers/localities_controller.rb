class LocalitiesController < ApplicationController

  before_action :authenticate_user!

  def index
    @localities = Locality.where(locality_id: params[:locality]).order('name')
    render json: @localities
  end
end
