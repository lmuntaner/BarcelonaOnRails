class CodingResourcesController < ApplicationController

  def index
    @coding_resources = CodingResource.all.includes(:level)
  end

  def show
    @coding_resource = CodingResource.find(params[:id])
  end
end
