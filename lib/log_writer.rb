require_relative "log_writer/writer"
# require_relative "log_writer/version"

module LogWriter
  class Error < StandardError; end
end

LogWriter::Writer.new
