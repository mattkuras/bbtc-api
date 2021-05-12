module Api::V1 
    class RequestsController < ApplicationController
      def index
        requests = Request.all
      end
      
      def create
        request = Request.new(request_params)
        if request.save 
          render json: {request: request, success: 'request created'}
        else 
          render json: {error: 'something went wrong creating the new request'}
        end
      end
      
      def destroy
      end
      
      def update
      end
  
      private
  
      def request_params
        params.require(:request).permit(
          :location_address,
          :destination_address
          #add passenger when ready
        )
      end
  
    end
  end      
  