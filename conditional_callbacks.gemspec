require 'rake'

Gem::Specification.new do |s|
  s.name = 'conditional_callbacks'
  s.version = '1.0.3'
  s.date  = '2014-10-19'
  s.summary = 'ConditionalCallbacks'
  s.description = 'Calls back blocks by name'
  s.authors = 'Intrepid Products'
  s.email = 'IntrepidProducts@gmail.com'
  s.license = 'MIT'
  s.require_path = 'lib'
  s.files = Rake::FileList['lib /*.rb']
  s.test_files = Rake::FileList['spec /*.rb']

  s.add_development_dependency "rspec"
  s.add_development_dependency "rake"
end
