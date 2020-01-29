
configure = require '../lib/configure'
path = require 'path'

describe 'configure', ->

  it 'load default yaml file', ->
    config = configure()
    config.should.eql
      users:
        output_dir: path.join __dirname, '../output'
        length: 1000
      products:
        output_dir: path.join __dirname, '../output'
        length: 1000

  it 'load user configuration', ->
    config = configure
      users:
        output_dir: './output'
      products:
        output_dir: './output'
    config.should.eql
      users:
        output_dir: path.join __dirname, '../output'
        length: 1000
      products:
        output_dir: path.join __dirname, '../output'
        length: 1000
