lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clean_this_dirty_string/version'

Gem::Specification.new do |spec|
  spec.name          = 'clean-this-dirty-string'
  spec.version       = CleanThisDirtyString::VERSION
  spec.date          = '2018-08-28'
  spec.summary       = 'It cleans your dirty string'
  spec.authors       = ['Dmitry Sadovnikov']
  spec.email         = ['sadovnikov.js@gmail.com']
  spec.homepage      = 'https://github.com/DmitrySadovnikov/clean-this-dirty-string'
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '~> 10.0'
end
