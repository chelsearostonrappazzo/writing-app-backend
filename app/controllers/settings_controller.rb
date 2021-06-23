class SettingsController < ApplicationController
  def show 
    @setting = Setting.limit(params[:number]).order("RANDOM()") 
    render json: @setting
  end
end
