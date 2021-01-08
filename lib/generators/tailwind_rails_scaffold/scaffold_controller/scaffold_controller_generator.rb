require 'rails/generators/rails/scaffold_controller/scaffold_controller_generator'
require File.join(File.dirname(__FILE__), '../erb/erb_generator')
require File.join(File.dirname(__FILE__), '../base')

module TailwindRailsScaffold
  module Generators
    class ScaffoldControllerGenerator < ::Rails::Generators::ScaffoldControllerGenerator
      include ::TailwindRailsScaffold::Base

      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

#      source_root File.expand_path('../templates', __FILE__)

      # override ScaffoldControllerGenerator
      hook_for :template_engine
      hook_for :test_framework, :in => 'tailwind_rails_scaffold:scaffold'

      # override ScaffoldControllerGenerator
      hook_for :helper, :as => :scaffold do |invoked|
        invoke invoked, [ controller_name ]
      end
    end
  end
end
