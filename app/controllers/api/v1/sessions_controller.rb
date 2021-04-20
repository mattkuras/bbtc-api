module Api::V1 
    class SessionsController < ApplicationController
        def auto_login
          if admin = session_admin 
            render json: admin
          else
            render json: { errors: "no admin logged in" }
          end
        end
      
        def login
          admin = Admin.find_by(username: params[:admin][:username]) 
          if admin&.authenticate(params[:admin][:password])
            payload = { admin_id: admin.id }
            token = encode_token(payload)
            render json: { admin: admin, jwt: token, success: "hey dude" }
          else
            render json: { status: 401 }
          end
        end
    end
end      