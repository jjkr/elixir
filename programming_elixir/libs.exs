import IO, only: [puts: 1]

:io.format("~.2f~n", [:math.pi])
puts System.get_env("PWD")
puts Path.extname("dave/test.exs")

