#defmodule PingServer
#  def start do: spawn listen
#  defp listen do
#    receive do
#      {client, :ping} -> do
#        IO.puts "got ping!"
#        send client, :pong
#        listen
#      end
#    end
#  end
#end

server = PingServer.start
server |> send {self, :ping}

defmodule Client
  def start do: spawn poll
  def poll
    receive do
      _ -> do
        IO.puts "got pong!"
        poll
      end
    end
  end
end
