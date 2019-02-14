class HomeworksController < ApplicationController


    def index 
        @homeworks = Homework.all
       
    end 

    def show 
        @homework = Homework.find(params[:id])
        @userscompleted = @homework.homework_users.where(completed: true)
     end 

    
        
end
