require_relative 'log_writer/writer'
require_relative 'log_writer/version'
require_relative 'log_writer/config'
require_relative 'log_writer/runner'

module LogWriter
  class Error < StandardError; end
end
