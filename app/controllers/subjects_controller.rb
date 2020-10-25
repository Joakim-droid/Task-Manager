class SubjectsController < ApplicationController
    def index 
      @subjects = Subject.where(user: current_user)
    end
    def new
      @subject = Subject.new
    end
    def create
      @subject = Subject.create(subject_params)
    end
    def edit; end
    def update; end
    def destroy; end

    private

    def subject_params
      params.require(:subject).permit(:title)
    end
end
