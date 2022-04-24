class SettingsController < ApplicationController
    def edit
        @setting = current_user.setting
    end

    def update
        @setting = current_user.setting
        if @setting.update(setting_params)
          redirect_to :edit
        else
          render :edit, status: :unprocessable_entity
        end
    end

    private
    
    def setting_params
      params.require(:setting).permit(:jwt_token_1, :jwt_token_2, :jwt_token_3, :space_name_1, :space_name_2, :space_name_3)
    end
end
