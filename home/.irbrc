require 'logger'
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
    Object.const_set('RAILS_DEFAULT_LOGGER', Logger.new(STDOUT))
end

begin
  require 'irb/ext/save-history'
  IRB.conf[:SAVE_HISTORY] = 200
  IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
rescue LoadError
end
