defmodule Issues.Cli do

  @default_count 4

  @moduledoc """
  Parse command line arguments for the issues app
  """

  def run(argv) do
    argv |> parse_args |> process
  end

  def parse_args(argv) do
    parsed = OptionParser.parse(argv, switches: [help: :boolean],
                                      aliases: [h: :help])
    case parsed do
      {[help: true], _, _} -> :help
      {_, [user, project, count], _} -> {user, project, count}
      {_, [user, project], _} -> {user, project, @default_count}
      _ -> :help
    end
  end

  def process(:help) do
    IO.puts """
    usage: issues <user> <project> [ count | #{@default_count} ]
    """
    System.halt(0)
  end
end
