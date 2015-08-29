server = spawn fn ->
  receive do
    {client, :ping} ->
      IO.puts "got ping!"
      send client, :pong
  end
end

server |> send {self, :ping}
receive do
  _ -> IO.puts "got pong!"
end
