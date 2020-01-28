
configure = require '../lib/configure'
path = require 'path'

describe 'configure', ->

  it 'load default yaml file', ->
    config = configure()
    config.should.eql
      output_dir: path.join __dirname, '../output'
      users:
        length: 1000
      products:
        length: 1000
