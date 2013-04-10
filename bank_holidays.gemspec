# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bank_holidays/version'

Gem::Specification.new do |spec|
  spec.name          = "bank_holidays"
  spec.version       = BankHolidays::VERSION
  spec.authors       = ["Richard Patching"]
  spec.email         = ["richard@justaddpixels.com"]
  spec.description   = %q{Ruby lib for retrieving UK bank holiday dates}
  spec.summary       = %q{Ruby lib for retrieving UK bank holiday dates}
  spec.homepage      = "http://github.com/patchfx/bank_holidays"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'httparty'
  spec.add_dependency 'icalendar'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
