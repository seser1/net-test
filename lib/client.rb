require 'socket'

loop do
  s=gets
  TCPSocket.open('localhost', 1000) do |sock|
      sock.write(s)
  end
end

