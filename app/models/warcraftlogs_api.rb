require "graphql/client"
require "graphql/client/http"

URL = "https://sod.warcraftlogs.com/api/v2/client".freeze

module WarcraftlogsApi
  HTTP = GraphQL::Client::HTTP.new(URL) do
    def headers(context)
      # Optionally set any HTTP headers
      { 
        "Content-Type": "application/json",
        "Authorization": " Bearer #{ENV['WARCRAFTLOG_AUTHORIZATION_TOKEN']}"
      }
    end
  end

  Schema = GraphQL::Client.load_schema("warcraftlog_schema.json")
  Client = GraphQL::Client.new(schema: Schema, execute: HTTP)
end