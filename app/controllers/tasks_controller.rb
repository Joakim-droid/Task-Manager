class TasksController < ApplicationController
    def index 
      @tasks = Task.where(user: current_user)
    end
    def show
      @task = Task.find(params[:id])
    end
    def new
      @task = Task.new
    end
    def create
      @task = Task.create(task_params)
    end
    def edit; end
    def update; end
    def destroy; end

    private

    def task_params
      params.require(:task).permit(:title, :details, :completed, :subject)
    end
end
