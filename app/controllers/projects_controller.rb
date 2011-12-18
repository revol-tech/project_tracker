class ProjectsController < ApplicationController
  def index
  @projects = Project.all
  end

  def show
  end

  def new
  @project = Project.new()
  @persons = Persons.new() 
  end

  def create
  @project = Project.new(params[:project])
  @project.save!
  redirect_to (projects_path)
  end

  def edit
  @project = Project.find("#{params[:id]}")
  end

  def update
  @project = Project.find("#{params[:id]}")
  @project.update_attributes(params[:project])
  @project.save!
  redirect_to (projects_path)
  end

  def destroy
  @project = Project.find("#{params[:id]}")
  @project.delete
  
  redirect_to (projects_path)
  end

end
