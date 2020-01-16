require 'rails'

module LogWriter
  module Rails
    class MyRailtie < ::Rails::Railtie
      config.after_initialize do
        log_writer = LogWriter::Writer.new
        log_writer.run
      end
    end
  end
end