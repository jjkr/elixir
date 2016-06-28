defmodule CliTest do
  use ExUnit.Case

  import Issues.Cli, only: [ parse_args: 1 ]

  test "-h option should return help" do
    assert parse_args(["-h", "foobar"]) == :help
  end

  test "--help option should return help" do
    assert parse_args(["--help", "foobar"]) == :help
  end

  test "three options should return tuple" do
    assert parse_args(["user", "project", 99]) == {"user", "project", 99}
  end

  test "two options should return default count" do
    assert parse_args(["user", "project"]) == {"user", "project", 4}
  end
end
