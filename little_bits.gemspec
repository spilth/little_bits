# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'little_bits/version'

Gem::Specification.new do |spec|
  spec.name          = 'little_bits'
  spec.version       = LittleBits::VERSION
  spec.authors       = ['Brian Kelly']
  spec.email         = ['polymonic@gmail.com']
  spec.summary       = %q{Gem for communicating with littleBits modules}
  spec.description   = %q{Classes to easily talk to the cloudBit and Arduino module}
  spec.homepage      = 'https://github.com/spilth/little_bits'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rest_client', '~> 1.8'
  spec.add_runtime_dependency 'arduino_firmata', '~>0.3.7'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock'
end
