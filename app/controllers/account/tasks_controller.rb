class Account::TasksController < ApplicationController
  before_action :set_project_and_section
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @task = @section.tasks.new
  end

  def create
    @task = @section.tasks.new(task_params)

    if @task.save
      redirect_to account_project_path(@project)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @task.update_attributes(task_params)
      redirect_to account_project_section_task_path(@project, @section, @task)
    else
      render 'edit'
    end
  end

  def destroy
    @task.delete
    redirect_to account_project_path(@project, @section)
  end

  private

  def set_project_and_section
    @project = Project.find(params[:project_id])
    @section = @project.sections.find(params[:section_id])
  end

  def set_task
    @task = @section.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
