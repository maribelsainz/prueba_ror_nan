class TasksController < ApplicationController
  def create
    @task = Task.find_or_initialize_by(
      user: current_user,
      todo_id: params[:todo_id],
      done: true
    )
    @task.save
    redirect_to tasks_path, notice: 'Has realizado una actividad dieciochera!'
  end

  def index
    @tasks = Task.all
  end
end

