require 'rails/generators/active_record/model/model_generator'
require File.join(File.dirname(__FILE__), '../test_unit/model_generator')
require File.join(File.dirname(__FILE__), '../base')

module TailwindRailsScaffold
  module Generators
    class ActiveRecordGenerator < ::ActiveRecord::Generators::ModelGenerator
      include ::TailwindRailsScaffold::Base

      source_root superclass.source_root

      hook_for :test_framework, :in => 'tailwind_rails_scaffold:model'

      def initialize(args, *options) #:nodoc:
        super
      end

      protected
      def migration_action; 'add'; end
    end
  end
end
