require 'rake'

task :zsh do
  puts "Setting default shell"
  if ENV["SHELL"].include? 'zsh' then
    puts "Good for you, you're already using zsh"
  else
    run %{ chsh -s /bin/zsh }
  end
end

file 'emacs' do
  puts "Checking for existance of emacs"
  unless system %{ emacs --version }
    puts("You have to install emacs first")
    fail
  end
end

task :configure_emacs => ['emacs'] do
  puts "Installing Emacs config"
  unless File.exists?(File.join(ENV['HOME'], '.emacs.d'))
    source = "#{ENV["PWD"]}/emacs.d"
    puts "symlink #{source}"
    system %( ln -s #{source} ~/.emacs.d)
  else
    puts "Emacs config already exists, I'm not messing with it."
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
