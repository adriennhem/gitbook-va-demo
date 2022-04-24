class AuthController < ApplicationController
    def encode_token
        if current_user.authorized?
            setting = current_user.setting
            space = params[:space]
            payload = { data: 'test' }

            if space == setting.space_name_1
                gitbook_sign_key = setting.jwt_token_1
            elsif space == setting.space_name_2
                gitbook_sign_key = setting.jwt_token_2
            elsif space == setting.space_name_3
                gitbook_sign_key = setting.jwt_token_3
            end

            token = JWT.encode payload, gitbook_sign_key, 'HS256'
            url = setting.url

            redirect_to "#{url}#{space}/?jwt_token=#{token}"
        else
            redirect_to root_path, notice: "You are not authorized to access this content!"
        end
    end
end

