require 'socket'

def client(s)

  TCPSocket.open('localhost', 1000) do |sock|
      sock.write(s.to_s)
  end

end

