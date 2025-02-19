# sample-mcp-rails

This is a sample Rails application that uses the MCP protocol to call a remote MCP server.

## How to run

```bash
# install dependencies
bundle install

# run the Rails application
rails s

# create HTTP request to the Rails application
curl http://localhost:3000/hello
```

## Architecture

This project has `/mcps` directory that contains the MCP server.
There is a sample MCP server in `mcps/hello_world.rb`.

When the Rails application starts, it will connect to the MCP server.
see: `config/initializers/mcp_hello_world.rb`
