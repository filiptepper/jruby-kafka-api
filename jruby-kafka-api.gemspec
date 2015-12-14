# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jruby/kafka/api/version'

Gem::Specification.new do |spec|
  spec.name          = "jruby-kafka-api"
  spec.version       = Jruby::Kafka::API::VERSION
  spec.authors       = ["Filip Tepper"]
  spec.email         = ["filip@tepper.pl"]
  spec.platform      = "java"

  spec.summary       = %q{Kafka JAR files for producer and comsumer APIs}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.requirements << "jar 'org.apache.kafka:kafka_2.10', '0.9.0.0'"

  spec.add_runtime_dependency     "jar-dependencies", "~> 0.3.1"

  spec.add_development_dependency "bundler",          "~> 1.10"
  spec.add_development_dependency "rake",             "~> 10.0"
end
