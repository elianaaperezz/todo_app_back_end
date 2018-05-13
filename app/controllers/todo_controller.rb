class TodoController < ApplicationController
    def index 
        id = 2
        if id == '1'
            @todo_description = "Make the curriculum"
            @todo_pomodoro_estimate = 2
        end
    end
    def show
        # Get the number the user typed in the URL
        todo_id = params[:id]
        
        # Grab the todo with that id from the datatbase
        @todo = Todo.find_by_id(todo_id)
    end
    def new
    end
    def create
        t=Todo.new
        t.description = params['new_todo']
        t.pomodoro_estimate =params['number_of_pomodoros']
        t.save
        redirect_to"/todo/show/#{t.id}" 
    end
end


    
        

