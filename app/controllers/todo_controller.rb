class TodoController < ApplicationController
    def index 
        id = 2
        if id == '1'
            @todo_description = "Make the curriculum"
            @todo_pomodoro_estimate = 2
        end
    end
    def show
        todo_id = params[:id]
        if todo_id == '1'
            @todo_description = "Make the curriculum"
            @todo_pomodoro_estimate = 4
        elsif todo_id == '2'
            @todo_description = "Buy workshop supplies"
            @todo_pomodoro_estimate = 3
        elsif todo_id == '3'
            @todo_description = "Meet with the volunteer trainers"
            @todo_pomodoro_estimate = 2
        elsif todo_id == '4'
            @todo_description = "Order food for Saturday and Sunday"
            @todo_pomodoro_estimate = 1
        end
    end
end
