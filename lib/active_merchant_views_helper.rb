module ActiveMerchantViewsHelper
  def render_am_views(payment_gateway:, locals: {})
    render partial: "active_merchant/#{payment_gateway.to_s}", locals: locals
  end
end
