defmodule Blogger1Test do
  use ExUnit.Case
  doctest Blogger1

  test "greets the world" do
    assert Blogger1.hello() == :world
  end
end
