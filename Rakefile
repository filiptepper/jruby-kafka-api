require "bundler/gem_tasks"
require "jar_installer"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

desc "Setup JAR dependencies"
task :setup do
  Jars::JarInstaller.install_jars
end
