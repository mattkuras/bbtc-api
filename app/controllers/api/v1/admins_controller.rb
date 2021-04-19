module Api::V1
    class AdminsController < ApplicationController
      
       def index
         @todos = Todo.all
         render json: @todos
       end
       ....
     end
   end