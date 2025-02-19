require "mcp"

name "hello-world"

tool "greet" do
  description "Greet someone by name"
  argument :name, String, required: true, description: "Name to greet"

  call { "Hello, #{it[:name]}!" }
end

resource "hello://world" do
  name "Hello World"
  description "A simple hello world message"
  mime_type "text/plain"
  call { "Hello, World!" }
end
