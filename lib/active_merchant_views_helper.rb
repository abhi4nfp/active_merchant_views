module ActiveMerchantViewsHelper
  def render_am_views(payment_gateway:, meta: {})
    render partial: "active_merchant/#{payment_gateway.to_s}", meta: meta
  end
end
