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
            todo = Todo.find_by_id(todo_id)
            
            # Set the variables shared with template to the values we got  
            #from the database
            @todo_description = todo.description
            @todo_pomodoro_estimate = todo.pomodoro_estimate
        
    end
end

