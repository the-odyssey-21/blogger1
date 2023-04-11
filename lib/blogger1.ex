defmodule Blogger1 do
  use HTTPoison.Base
  @blog_url "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91"

  def fetch_blog do
    case HTTPoison.get(@blog_url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body, headers: _headers}
      } -> body
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts "Not found :("
      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect  "Failed to fetch blog post: #{reason}"
      end
  end

  def to_upper_case(words) do
    Enum.map(words, &String.upcase/1)
  end
end
