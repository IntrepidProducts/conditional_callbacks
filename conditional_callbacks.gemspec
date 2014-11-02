require 'rake'

Gem::Specification.new do |s|
  s.name = 'conditional_callbacks'
  s.version = '1.0.5'
  s.date  = '2014-11-02'
  s.summary = 'ConditionalCallbacks'
  s.description = 'Calls back blocks by name'
  s.homepage    = 'https://github.com/IntrepidProducts/conditional_callbacks'
  s.authors = 'Intrepid Products'
  s.email = 'IntrepidProducts@gmail.com'
  s.license = 'MIT'
  s.require_path = 'lib'
  s.files = Rake::FileList['lib/*.rb']
  s.test_files = Rake::FileList['spec/*.rb']

  s.add_development_dependency "rspec", '~> 2'
  s.add_development_dependency "rake", '~> 10'
end
