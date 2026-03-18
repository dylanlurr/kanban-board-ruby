class BoardController < ApplicationController
  def index
    @planning = VideoProject.where(status: 'Planning')
    @scripting = VideoProject.where(status: 'Scripting')
    @filming = VideoProject.where(status: 'Filming')
    @editing = VideoProject.where(status: 'Editing')
    @published = VideoProject.where(status: 'Published')
  end
end
