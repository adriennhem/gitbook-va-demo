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
                                      :space_description_2, :space_description_3, :button_text, :url,
                                      :bg_color, :jumbo_bg_color, :button_bg_color, :button_text_color, :link_color, :jumbo_title_text, :jumbo_description_text, :image)
    end
end
