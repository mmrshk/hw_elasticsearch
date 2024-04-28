require 'elasticsearch'
require 'pry'

client = Elasticsearch::Client.new(host: 'http://localhost:9200')

response = client.search(
  index: 'new_words',
  body: {
    "query": {
      "match": {
        "suggest": {
          "query": "test",
          "fuzziness": "AUTO"
        }
      }
    }
  }
)

client.search(q: 'test')
