require 'rails/generators/test_unit/scaffold/scaffold_generator'
require File.join(File.dirname(__FILE__), '../base')

module TailwindRailsScaffold
  module Generators
    module Scaffold
      class TestUnitGenerator < ::TestUnit::Generators::ScaffoldGenerator
        include ::TailwindRailsScaffold::Base
        source_root superclass.source_root
      end
    end
  end
end
