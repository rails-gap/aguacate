class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_filter :set_active_page, only: [:index, :show]

  def index
    @projects = Project.paginate(page: params[:page])
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def set_active_page
    @active_page = 'projects'
  end

end
