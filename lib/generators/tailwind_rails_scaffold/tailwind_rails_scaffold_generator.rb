require 'rails/generators/rails/scaffold/scaffold_generator'
require File.join(File.dirname(__FILE__), 'base')
require File.join(File.dirname(__FILE__), 'scaffold_controller/scaffold_controller_generator')

module TailwindRailsScaffold
  module Generators
    class TailwindRailsScaffoldGenerator < ::Rails::Generators::ScaffoldGenerator
      include ::TailwindRailsScaffold::Base

      # override ScaffoldGenerator
      hook_for :scaffold_controller, :required => true

      # Ensure assets get created with the correct name
      hook_for :assets, :in => :rails do |source, generator|
        source.invoke generator, [ source.file_name.pluralize ]
      end

      # override ModelGenerator
      hook_for :orm, :required => true

      # replacing hook for adding config/routes
      remove_hook_for :resource_route
    end
  end
end
