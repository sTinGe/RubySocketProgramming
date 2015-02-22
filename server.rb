require 'socket'

server = TCPServer.open(2000)
loop { 
  client = server.accept
  client.puts " It's #{Time.now.ctime}"
  client.puts "Closing the connection. Bye!"
  client.close
 }