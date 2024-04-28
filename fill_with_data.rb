require 'json'
require 'net/http'

# Elasticsearch settings
ELASTICSEARCH_URL = 'http://localhost:9200'
INDEX_NAME = 'new_words'
# INDEX_NAME = 'words'

# Function to read words from the file and format for Elasticsearch
def index_words_from_file(file_path)
  bulk_data = []

  File.foreach(file_path) do |line|
    word = line.strip
    next if word.empty?

    action = { index: { _index: INDEX_NAME } }.to_json
    data = { suggest: word }.to_json

    bulk_data.push(action, data)
  end

  # Send bulk request to Elasticsearch
  uri = URI("#{ELASTICSEARCH_URL}/#{INDEX_NAME}/_bulk")
  http = Net::HTTP.new(uri.host, uri.port)
  request = Net::HTTP::Post.new(uri)
  request.body = bulk_data.join("\n") + "\n"
  request['Content-Type'] = 'application/json'

  response = http.request(request)

  if response.code != '200'
    puts "Failed to index words. Status code: #{response.code}"
  else
    puts 'Words indexed successfully.'
  end
end

# Call the function with the path to your text file
index_words_from_file('words.txt')
