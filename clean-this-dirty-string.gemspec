Gem::Specification.new do |s|
  s.name          = 'clean-this-dirty-string'
  s.version       = '0.0.1'
  s.date          = '2018-08-28'
  s.summary       = 'It cleans your dirty string'
  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  s.require_paths = ['lib']
  s.authors       = ['Dmitry Sadovnikov']
  s.email         = ['sadovnikov.js@gmail.com']
  s.homepage      = 'https://github.com/DmitrySadovnikov/clean-this-dirty-string'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'pry'
end
