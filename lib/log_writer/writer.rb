# frozen_string_literal: true

module LogWriter
  # commont gem functional
  class Writer
    attr_writer :default_string

    def initialize(str = 'Some text')
      @default_string = str
    end

    def run
      puts @default_string
    end
  end
end
