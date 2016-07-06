Gem::Specification.new do |s|
  s.name          = 'convertable'
  s.version       = '0.0.4'
  s.date          = '2016-03-14'
  s.summary       = ''
  s.description   = ''
  s.authors       = ['Phil Walker', 'Ryan Cobb', 'Quintin Adam']
  s.files         = Dir.glob('lib/**/*') + Dir.glob('test/**/*')

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'pry'

  s.add_runtime_dependency 'linguistics'
end
