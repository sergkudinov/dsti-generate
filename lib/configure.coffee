
path = require 'path'
{merge} = require 'mixme'
config_default = require '../conf/default'

module.exports = (config_user = {}) ->
  config = merge config_default, config_user
  if config.users.output_dir
    config.users.output_dir = path.join __dirname, '..', config.users.output_dir
  if config.products.output_dir
    config.products.output_dir = path.join __dirname, '..', config.products.output_dir
  config
