Gem::Specification.new do |s|

  s.name          = 'fastapi'
  s.version       = '0.1.7'
  s.date          = '2014-07-28'
  s.summary       = 'Easily create robust, standardized API endpoints using lightning-fast database queries'
  s.description   = 'Easily create robust, standardized API endpoints using lightning-fast database queries'
  s.authors       = ['Keith Horwood']
  s.email         = 'keithwhor@gmail.com'
  s.files         = ['lib/fastapi.rb',
    'lib/fastapi/active_record_extension.rb']
  s.homepage      = 'https://github.com/thestorefront/FastAPI'
  s.license       = 'MIT'

  s.add_runtime_dependency 'oj', '~> 2.9.9'
  s.add_runtime_dependency 'rails', '>= 3.2.0'

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'rake'

  s.required_ruby_version = '>= 1.9.3'

end
