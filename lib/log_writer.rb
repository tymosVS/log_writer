require_relative 'log_writer/writer'
require_relative 'log_writer/version'
require_relative 'generators/log_writer_generator'

require 'rails'
require 'thor'

module LogWriter
  class Error < StandardError; end

  module Rails
    class MyRailtie < ::Rails::Railtie
      initializer 'log_writer' do
        log_writer = LogWriter::Writer.new
        log_writer.run
      end
    end
  end
end
