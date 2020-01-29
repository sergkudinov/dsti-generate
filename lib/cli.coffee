parameters = require 'parameters'
{merge} = require 'mixme'
configure = require './configure'
generate = require './generate'

params =
  name: 'generate'
  description: 'Generate datasets with random data.'
  commands: 
    'users':
      description: 'Generate users',
      options:
        'length':
          shortcut: 'l', 
          description: 'Number of users to generate'
        'output':
          shortcut: 'o', 
          description: 'Output directory'
      route: ({params}) ->
        config = configure()
        config.users.output_dir = null unless params.output
        generate.users merge config.users, params
    'products':
      description: 'Generate products',
      options:
        'length':
          shortcut: 'l', 
          description: 'Number of products to generate'
        'output':
          shortcut: 'o', 
          description: 'Output directory'
      route: () ->
        config = configure()
        config.products.output_dir = null unless params.output
        generate.products merge config.products, params

parameters(params).route()
