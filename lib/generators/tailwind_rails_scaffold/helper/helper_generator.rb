require 'rails/generators/rails/helper/helper_generator'
require File.join(File.dirname(__FILE__), '../test_unit/helper_generator')
require File.join(File.dirname(__FILE__), '../base')

module TailwindRailsScaffold
  module Generators
    class HelperGenerator < ::Rails::Generators::HelperGenerator
      include ::TailwindRailsScaffold::Base

      source_root superclass.source_root

      # override
      hook_for :test_framework, :in => 'tailwind_rails_scaffold:helper'
    end
  end
end
