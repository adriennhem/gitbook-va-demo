class PagesController < ApplicationController
  def index
    @setting = current_user.setting
  end
end
  