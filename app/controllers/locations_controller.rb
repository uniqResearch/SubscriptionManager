class LocationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cities = City.all.order('name')
  end
end
