require 'rake'

task :zsh do
  puts "Setting default shell"
  if ENV["SHELL"].include? 'zsh' then
    puts "Good for you, you're already using zsh"
  else
    run %{ chsh -s /bin/zsh }
  end
end

task :prezto do
  puts "Installing prezto"

  unless File.exists?(File.join(ENV['HOME'], '.zprezto'))
    system %{ ln -s prezto ~/.zprezto  }
    Dir.glob('prezto/runcoms/z*').each do |f|
      file_name = f.split('/').last
      puts "Symlink " + f  + " "  + file_name
      system %{ ln -s  #{File.expand_path(f)} ~/.#{file_name} }
    end
  end
end
