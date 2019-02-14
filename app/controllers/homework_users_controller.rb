class HomeworkUsersController < ApplicationController
    def create 
        @homework_user = HomeworkUser.new(
            user: current_user,
            homework_id: params[:homework_id]
        )
        @homework_user.completed = true
        @homework_user.save
        redirect_to homeworks_path
    end 
    def destroy
        @homework_user = HomeworkUser.where(homework_id: params[:homework_id], user: current_user)
        @homework_user.destroy_all
        @homework_user.each { |h| h.completed = false}
        
        redirect_to root_path
    end 



end
