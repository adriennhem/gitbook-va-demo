class AuthController < ApplicationController
    def encode_token
        if current_user.authorized?
            space = params[:space]
            payload = { data: 'test' }

            if space == "pe201-design-and-manage"
                gitbook_sign_key = "f8e9615b-9e2f-4c76-977e-bb144266360a"
            elsif space == "pe101-deploy-and-discover"
                gitbook_sign_key = "ca1892d8-6997-4da7-b28e-df8648b5f78e"
            end

            token = JWT.encode payload, gitbook_sign_key, 'HS256'
            redirect_to "https://puppet-demo.gitbook.io/#{space}/?jwt_token=#{token}"
        else
            redirect_to root_path, notice: "You are not authorized to access this content!"
        end
    end
end

