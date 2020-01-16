# frozen_string_literal: true

# dinamic change printed text
module LogWriter
  def self.configure
    yield config
  end

  def self.config
    @_config ||= Config.new
  end

  class Config
    attr_accessor :default_text

    def initialize
      @default_text = 'Some text'
    end
  end
end
