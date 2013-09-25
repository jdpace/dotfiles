require 'pathname'

module Dotfiles
  include Rake::DSL

  def self.symlink
    each_child do |child|
      symlink_child child
    end
  end

  def self.symlink_child(child)
    target = "#{ENV['HOME']}/#{child.basename}"
    puts "ln -s #{child} #{target}"

    if File.exist?(target)
      puts "!! Skipping, file or directory exists"
    else
      ln_s child, target
    end
  end

  private

  def self.dothome
    Pathname.new File.expand_path('../home', __FILE__)
  end

  def self.each_child(&block)
    dotfiles = Pathname.glob(dothome.join('.*'))
    dotfiles.reject! { |dotfile| dotfile.basename.to_s.match(/^\.+$/)}
    dotfiles.each(&block)
  end
end

desc "Installs dotfiles and dependencies"
task :install => ['symlink', 'update', 'janus:install']

desc 'Link files and directories in dotfiles/home to $HOME/'
task :symlink do
  Dotfiles.symlink
end

desc 'Update any submodules'
task :update do
  root = File.expand_path('..', __FILE__)
  system "cd #{root} && git submodule update"
end

namespace :janus do
  desc "Clones Janus into $HOME/.vim"
  task :install do
    unless File.exist? "#{ENV['HOME']}/.vim/janus"
      rm_rf "#{ENV['HOME']}/.vim"
      system "git clone git://github.com/carlhuda/janus.git $HOME/.vim"
    end

    Rake::Task["janus:update"].invoke
  end

  desc "Update Janus"
  task :update do
    system "cd $HOME/.vim && rake"
  end
end
