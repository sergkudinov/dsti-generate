
path = require 'path'
config_default = require '../conf/default'

module.exports = (config_path) ->
  config = unless config_path
    config_default
  else
    config_path
  config.output_dir = path.join __dirname, '..', config.output_dir
  config
