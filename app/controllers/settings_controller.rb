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
      params.require(:setting).permit(:jwt_token_1, :jwt_token_2, :jwt_token_3, :space_name_1, :space_name_2, 
                                      :space_name_3, :space_title_1, :space_title_2, :space_title_3, :space_description_1, 
                                      :space_description_2, :space_description_3, :button_text, :url)
    end
end
