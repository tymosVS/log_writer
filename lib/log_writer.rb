require_relative 'log_writer/writer'
require_relative 'log_writer/version'
require_relative 'log_writer/config'

require 'rails'
require 'thor'

module LogWriter
  class Error < StandardError; end

  module Rails
    class MyRailtie < ::Rails::Railtie
      config.after_initialize do
        log_writer = LogWriter::Writer.new
        log_writer.run
      end
    end
  end
end
