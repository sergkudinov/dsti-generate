
fs = require 'fs'

module.exports =
  users: (config) ->
    unless config.output_dir
      user_length = 0
      while user_length++ < config.length
        process.stdout.write "hello\n"
      return null
    new Promise (resolve, reject) ->
      user_length = 0
      ws = fs.createWriteStream config.output_dir + '/users.csv'
      while user_length++ < config.length
        ws.write "hello\n"
      ws.end()
      ws.on 'finish', () -> resolve true
      ws.on 'error', reject
    
  products: (config) ->
    new Promise (resolve, reject) ->
      user_length = 0
      ws = fs.createWriteStream config.output_dir + '/products.csv'
      while user_length++ < config.length
        ws.write "hello\n"
      ws.end()
      ws.on 'finish', () -> resolve true
      ws.on 'error', reject
      
    
    
