require 'rake'

#TODO Fill out license, description, email, homepage, summary

Gem::Specification.new do |s|
  s.name          = 'convertable'
  s.version       = '0.0.0'
  s.date          = '2016-03-14'
  s.summary       = ''
  s.description   = ''
  s.authors       = ['Phil Walker', 'Ryan Cobb']
  s.files         = Dir.glob("lib/**/*") + Dir.glob("test/**/*")
end
