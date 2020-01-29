
generate = require '../lib/generate'
path = require 'path'
fs = require('fs').promises

describe 'generate', ->

  describe 'users', ->
    
    it 'check the length property', ->
      await generate.users
        output_dir: "#{__dirname}/../output"
        length: 10
      output = await fs.readFile "#{__dirname}/../output/users.csv", 'utf8'
      output.trim().split('\n').length.should.eql 10

  describe 'products', ->
    
    it 'check the length property', ->
      await generate.products
        output_dir: "#{__dirname}/../output"
        length: 10
      output = await fs.readFile "#{__dirname}/../output/products.csv", 'utf8'
      output.trim().split('\n').length.should.eql 10
      
