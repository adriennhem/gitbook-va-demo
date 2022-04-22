class AuthController < ApplicationController
    def encode_token
        if current_user.authorized?
            space = params[:space]
            payload = { data: 'test' }

            if space == "squad-acquisition"
                gitbook_sign_key = "d1ce8f3a-9bee-4757-8913-a00cbddb9360"
            elsif space == "squad-fleet"
                gitbook_sign_key = "2e6aa8f2-f6d5-4cdb-98ac-3d9c6b0cd4db"
            elsif space == "squad-payments"
                gitbook_sign_key = "b2468b3c-a9f3-409a-aca6-7f57c30fea27"
            end

            token = JWT.encode payload, gitbook_sign_key, 'HS256'
            redirect_to "https://kovi-1.gitbook.io/#{space}/?jwt_token=#{token}"
        else
            redirect_to root_path, notice: "You are not authorized to access this content!"
        end
    end
end

