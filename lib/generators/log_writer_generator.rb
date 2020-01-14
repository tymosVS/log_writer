require 'rails'

module LogWriter
  module Generators
    class LogWriterGenerator < ::Rails::Generators::Base
      desc 'Copy config to app'

      source_root File.expand_path('../templates', __FILE__)

      def copy_config_file
        template 'log_writer.rb', 'config/initializers/log_writer.rb'
      end
    end
  end
end
