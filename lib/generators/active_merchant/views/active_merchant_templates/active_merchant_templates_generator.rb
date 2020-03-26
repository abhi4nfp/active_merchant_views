module ActiveMerchant
  module Views
    class ActiveMerchantTemplatesGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../../../app/views', __FILE__)

      def copy_views
        directory('active_merchant', Rails.root.join('app', 'views', 'active_merchant'))
      end
    end
  end
end
