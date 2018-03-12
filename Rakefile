require 'pathname'

module Dotfiles
  extend Rake::DSL

  def self.symlink
    each_child do |child|
      symlink_child child
    end
  end

  def self.symlink_child(child)
    target = "#{ENV['HOME']}/#{child.basename}"

    unless File.exist?(target)
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
task :install => ['symlink', 'update', 'brew']

desc 'Link files and directories in dotfiles/home to $HOME/'
task :symlink do
  Dotfiles.symlink
end

desc 'Update any submodules'
task :update do
  root = File.expand_path('..', __FILE__)
  system "cd #{root} && git submodule update"
end

desc 'Install global brew bundle'
task :brew do
  system "brew bundle --global"
end
