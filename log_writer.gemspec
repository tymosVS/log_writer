require_relative 'lib/log_writer/version'
require_relative 'lib/log_writer/writer'
# require_relative 'lib/generators/log_writer_generator'


Gem::Specification.new do |spec|
  spec.name          = 'log_writer'
  spec.version       = LogWriter::VERSION
  spec.authors       = 'Vladimir'
  spec.email         = 'timos9vs@gmail.com'

  spec.summary       = 'log_writer'
  spec.description   = "Hometask writes some string to RoR's logs"
  spec.homepage      = 'https://github.com/tymosVS/log_writer'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/tymosVS/log_writer'
  spec.metadata['changelog_uri'] = 'https://github.com/tymosVS/log_writer'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.files.push('lib/log_writer/writer.rb')
  spec.files.push('lib/log_writer/config.rb')
  spec.files.push('lib/generators/templates/log_writer.rb')
  spec.files.push('lib/generators/log_writer_generator.rb')
  spec.add_runtime_dependency 'rails', '~> 5.1'
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
