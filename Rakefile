begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = 'ys'
    gem.summary     = 'you can easily use both ssh and sh'
    gem.description = 'you can easily use both ssh and sh'
    gem.email = 'okitakunio@gmail.com'
    gem.homepage = 'http://github.com/okitan/ys'
    gem.authors = ['okitan']

    [
      [ 'net-ssh', '>= 2.0.20' ],
    ].each do |g, v|
      gem.add_dependency g, v
    end
      
    [
      [ 'rr',    '>= 1.0.9' ],
      [ 'rspec', '>= 1.3.0' ],
    ].each do |g, v|
      gem.add_development_dependency g, v
    end
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts 'Jeweler (or a dependency) not available. Install it with: gem install jeweler'
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ''

  rdoc.rdoc_dir = 'doc'
  rdoc.title = "ys #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
