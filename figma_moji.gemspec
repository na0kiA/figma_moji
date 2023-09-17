# frozen_string_literal: true

require_relative 'lib/figma_moji/version'

Gem::Specification.new do |spec|
  spec.name          = 'figma_moji'
  spec.version       = FigmaMoji::VERSION
  spec.authors       = ['na0kiA']
  spec.email         = ['na0ki199823@gmail.com']

  spec.summary       = 'A gem to extract text from Figma designs.'
  spec.description   = 'FigmaMoji provides an efficient way to extract text elements from Figma designs, allowing developers and designers to easily access and manage textual content from their Figma projects.'
  spec.homepage      = 'https://github.com/na0kiA/figma_moji'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
