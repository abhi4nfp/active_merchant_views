require 'rails'
require 'active_merchant_views_helper'

module ActiveMerchantViews
  class Engine < ::Rails::Engine
  end

  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'rails-active-merchant-views' do |app|
      ActiveMerchantViews::Railtie.instance_eval do
        pattern = pattern_from app.config.i18n.available_locales

        files = Dir[File.join(File.dirname(__FILE__), '../locales', "#{pattern}.yml")]
        I18n.load_path.concat(files)

        ActionView::Base.send :include, ActiveMerchantViewsHelper
      end
    end

    def self.pattern_from(args)
      array = Array(args || [])
      array.blank? ? '*' : "{#{array.join ','}}"
    end
  end
end
