require 'honeybadger'

plugin = Rpush.plugin(:honeybadger)
plugin.url = 'https://github.com/rpush/rpush-plugin-honeybadger'
plugin.description = 'Report errors to Honeybadger.'

plugin.reflect do |on|
  on.error do |error|
    Honeybadger.notify(error)
  end
end
