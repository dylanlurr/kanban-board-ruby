class BoardController < ApplicationController
  def index
    @projects_by_status = VideoProject.all.group_by(&:status)
  end
end
