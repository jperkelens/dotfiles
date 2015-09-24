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

file 'tmux' do
  puts 'Checking for existance of tmux'
  unless system %{ tmux -V }
    puts("You have to install tmux first")
    fail
  end
end

file 'git' do
  puts 'Checking for existance of git'
  unless system %{ git --version }
    puts("You have to install git first")
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
  FileUtils.ln_s File.expand_path('./prezto'), File.expand_path('~/.zprezto'), :force => true
  Dir.glob('./prezto/runcoms/z*').each do |f|
    file_name = f.split('/').last
    puts(file_name)
    unless(file_name.eql?('zpreztorc') or file_name.eql?('zshrc'))  
      puts "Symlink " + f  + " "  + file_name
      FileUtils.ln_s File.expand_path(f), File.expand_path("~/.#{file_name}"), :force => true 
    end 
  end
  Dir.glob('./prezto-custom/z*').each do |f|
    file_name = f.split('/').last
    puts "Symlink " + f  + " "  + file_name
    FileUtils.ln_s File.expand_path(f), File.expand_path("~/.#{file_name}"), :force => true
  end
  prompt_file = 'prompt_matt_setup'
  FileUtils.ln_s File.expand_path("./prezto-custom/#{prompt_file}"), 
    File.expand_path("prezto/prezto/modules/prompt/functions/#{prompt_file}"), 
    :force => true
end

task :configure_tmux => ['tmux'] do
  unless File.exists?(File.join(ENV['HOME'], '.tmux.conf'))
    source = "#{ENV['PWD']}/tmux/tmux.conf"
    puts "symlink #{source}"
    system %{ ln -s #{source} ~/.tmux.conf}
  else
    puts "tmux config already exists, so... i'll just leave it alone"
  end
end

task :configure_git => ['git'] do
  puts "configuring git"
  unless File.exists? File.join(ENV['HOME'], '.prezto')
    FileUtils.ln_s File.expand_path('./git/gitconfig'), File.expand_path('~/.gitconfig')
  else
    puts "no way man, you've already got a git config"
  end
end

task :configure_vim do
  puts "configuring vim"
  unless File.exists? File.join(ENV['HOME'], '.vimrc')
    FileUtils.ln_s File.expand_path('./vim/vimrc'), File.expand_path('~/.vimrc')
  else
    puts "Not a chance. That file is already there"
  end
end

task :configure_lein  do
  unless File.exists?(File.join(ENV['HOME'], '.lein/profiles.clj'))
    source = "#{ENV['PWD']}/lein/profiles.clj"
    puts "symlink #{source}"
    system %{ ln -s #{source} ~/.lein/profiles.clj}
  else
    puts "profiles.clj already exists, so... you're on your own buddy"
  end

end
