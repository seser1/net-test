require_relative './lib/echo.rb'
require_relative './lib/client.rb'

#Running argument: ruby main.rb HostIPAddress

host_ip = ARGV[0]

if host_ip == nil then
  echo
else
  client(ARGV[1])
end
