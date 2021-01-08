require 'rails/generators/erb/scaffold/scaffold_generator'
require File.join(File.dirname(__FILE__), '../base')

module TailwindRailsScaffold
  module Generators
    class ErbGenerator < ::Erb::Generators::ScaffoldGenerator
      include ::TailwindRailsScaffold::Base

      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

#      source_root File.expand_path('../templates', __FILE__)
    end
  end
end
