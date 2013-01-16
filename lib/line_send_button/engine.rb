# coding: utf-8
require File.expand_path('view_helpers', File.dirname(__FILE__))
module LineSendButton
  class Engine < ::Rails::Engine
    initializer "line_send_button.helper", after: 'disable_dependency_loading' do
      ActiveSupport.on_load(:action_view) do
        include ::LineSendButton::ViewHelpers
      end
    end
  end
end