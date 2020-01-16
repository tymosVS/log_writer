# frozen_string_literal: true

module LogWriter
  # commont gem functional
  class Writer

    def initialize
      @default_string = LogWriter.config.default_text
    end

    def run
      puts @default_string
    end
  end
end
