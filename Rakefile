require 'rake'

task setup: [:hello, :install_lunchy, :term, :editor] do
  puts "Setup complete"
end

task :hello do
  puts "Beginning Setup"
  puts %x{ brew update }
end

task term: [:install_zsh, :setup_prezto, :tmux]

task :install_lunchy do
  unless system %{ lunchy }
    puts "Installing Lunchy"
    puts %x{sudo gem install lunchy}
  end
end

task :install_zsh do
  puts "Setting default shell to zsh"
  if ENV["SHELL"].include? 'zsh' then
    puts "Good for you, you're already using zsh"
  else
    puts "executing chsh"
    puts %x{ chsh -s /bin/zsh }
  end
end

task :setup_prezto do
  puts "Installing prezto"
  FileUtils.ln_s File.expand_path('./prezto'), File.expand_path('~/.zprezto'), :force => true
  Dir.glob('./prezto/runcoms/z*').each do |f|
    file_name = f.split('/').last
    puts(file_name)
    puts "Symlink " + f  + " "  + file_name
    FileUtils.ln_s File.expand_path(f), File.expand_path("~/.#{file_name}"), :force => true 

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

task tmux: [:install_tmux, :configure_tmux]

file 'install_tmux' do
  unless system %{ tmux -V }
    puts "Installing tmux"
    puts %x{ brew install tmux }
  end
end

task :configure_tmux do
  puts "Configuring Tmux"
  source = "#{ENV['PWD']}/tmux/tmux.conf"
  puts "symlink #{source}"
  system %{ ln -s #{source} ~/.tmux.conf}
end

task editor: [:install_emacs, :install_spacemacs]

task :install_emacs do
  puts "installing emacs"
  puts %x{ brew tap d12frosted/emacs-plus }
  puts %x{ brew install emacs-plus }
  puts %x{ brew linkapps emacs-plus }
   
end

task :install_spacemacs do
  puts %x{ git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d }
end




file 'emacs' do
  puts "Checking for existance of emacs"
  unless system %{ emacs --version }
    puts("You have to install emacs first")
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




task :configure_git => ['git'] do
  puts "configuring git"
  unless File.exists? File.join(ENV['HOME'], '.prezto')
    FileUtils.ln_s File.expand_path('./git/gitconfig'), 
      File.expand_path('~/.gitconfig')
  else
    puts "no way man, you've already got a git config"
  end
end

