class NotificationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def get_notification
    render json: { notification: current_shop.notification }, status: 200
  end

  def post_notification
    current_shop.create_notification("title" => params[:title], "color" => params[:color], "background_color" => params[:background_color])
  end

  def current_shop
    Shop.find_by(shopify_domain: params[:shop_domain])
  end
end