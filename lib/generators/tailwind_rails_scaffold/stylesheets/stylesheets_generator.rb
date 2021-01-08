require 'rails/generators/rails/stylesheets/stylesheets_generator'

module TailwindRailsScaffold
  module Generators
    class StylesheetsGenerator < ::Rails::Generators::StylesheetsGenerator
      source_root superclass.source_root
    end
  end
end
