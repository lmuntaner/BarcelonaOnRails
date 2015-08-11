class CodingResourcesController < ApplicationController
  before_action :ensure_admin_logged_in, only: [:new, :create]

  def index
    @coding_resources = CodingResource.all.includes(:level)
  end

  def new
    @coding_resource = CodingResource.new
    @levels = Level.all.map { |level| [level.title, level.id] }
  end

  def create
    @coding_resource = CodingResource.new(coding_resource_params)

    if @coding_resource.save
      redirect_to coding_resource_path(@coding_resource)
    else
      render :new
    end
  end

  def show
    @coding_resource = CodingResource.find(params[:id])
  end

  private
  def coding_resource_params
    params.require(:coding_resource).permit(:title, :description, :level_id)
  end
end
