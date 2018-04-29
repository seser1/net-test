require 'socket'

TCPServer.open(1000) do |server|
  loop do
    Thread.start(server.accept) do |s|
      while s.gets
        p $_.chomp
        s.write($_)
      end
    end
  end
end

