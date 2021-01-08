require 'rails/generators/test_unit/helper/helper_generator'
require File.join(File.dirname(__FILE__), '../base')

module TailwindRailsScaffold
  module Generators
    module Helper
      class TestUnitGenerator < ::TestUnit::Generators::HelperGenerator
        include ::TailwindRailsScaffold::Base

        source_root superclass.source_root
      end
    end
  end
end
