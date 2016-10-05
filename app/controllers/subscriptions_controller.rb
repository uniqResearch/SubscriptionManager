class SubscriptionsController < ApplicationController

  before_action :authenticate_user!
  before_action :require_location, only: :index

  def index
    @subscriptions = Subscription.where(locality_id: cookies[:locality]).order('name')
  end

  def show
    @subscriptions = Subscription.find(params[:id])
  end

private

  def require_location
    unless cookies[:location]
      flash[:danger] = "You need to set your location"
      redirect_to :locations
    end
  end
end
