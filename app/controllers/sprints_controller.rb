class ProjectsController < ApplicationController
  include DefaultCrud

  before_action :authenticate_user!

  private

  def entity_parameters
    params
      .require(:sprint)
      .permit(:number, :date, :hours)
  end

  def load_entity_object_by_id
    @entity_object = entity.find(params[:sprint_id])
  end

  def load_all_entity_objects
    @all_entity_objects = entity.order(:number)
  end

end
