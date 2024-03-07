class Character
  RankingsQuery = WarcraftlogsApi::Client.parse <<-'GRAPHQL'
    query($name: String) {
      characterData {
        character(name: $name, serverRegion: "us", serverSlug: "lone-wolf"){
          name
          zoneRankings(byBracket: true)
        }
      }
    }
  GRAPHQL

  def fetch_character(name)
    response = WarcraftlogsApi::Client.query(RankingsQuery, variables: {name: name})
    response.original_hash["data"]["characterData"]["character"]
  end
end