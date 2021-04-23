module Api::V1 
  class DriversController < ApplicationController
    def index
      drivers = Driver.all
    end
    
    def create
      driver = Driver.new(driver_params)
      if params[:password] === params[:password_confirmation]
        driver.password = params[:password]
      end
      if driver.save 
        render json: {driver: driver, success: 'driver created'}
      else 
        render json: {error: 'something went wrong creating the new driver'}
      end
    end
    
    def destroy
    end
    
    def update
    end

    private

    def driver_params
      params.require(:driver).permit(
        :first_name, 
        :last_name,
        :email,
        :phone_number,
        :birthdate,
        :password,
        :password_confirmation,
        :license_number,
        :expiration_date
      )
    end

  end
end      
