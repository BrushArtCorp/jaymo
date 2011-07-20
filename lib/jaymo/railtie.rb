module Jaymo

  class Railtie < Rails::Railtie
    config.before_configuration do
      
      jq_mobile = 'jquery.mobile'
      jq_mobile += '.min' if Rails.env.production?

      config.action_view.javascript_expansions[:jq_mobile] = [jq_mobile]
      config.action_view.stylesheet_expansions[:jq_mobile] = [jq_mobile]

    end

    initializer "jaymo.view_helpers" do
      ActionController::Base.helper TagHelper
    end
  end

end
