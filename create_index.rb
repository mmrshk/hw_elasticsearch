require 'elasticsearch'
require 'pry'

client = Elasticsearch::Client.new(host: 'http://localhost:9200')

client.indices.create(
  index: 'new_words',
  body: {
    settings: {
      index: {
        max_ngram_diff: 2
      },
      analysis: {
        analyzer: {
          default: {
            tokenizer: 'whitespace',
            filter: [
              '3_5_grams'
            ]
          }
        },
        filter: {
          "3_5_grams": {
            type: 'ngram',
            min_gram: 3,
            max_gram: 5
          }
        }
      }
    }
  }
)
