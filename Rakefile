require "bundler/gem_tasks"

task :default => :spec

desc "Ejecutar las espectativas de la clase Preguntas"
task :spec do
  sh "rspec -I. spec/Prct10M17_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/Prct10M17_spec.rb --format documentation"
end

task :build do
  ruby "lib/Prct10M17.rb"
end