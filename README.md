To run container:
```bash
docker-compose up

ruby create_index.rb
ruby fill_with_data.rb
ruby query.rb

````


```bash
{"acknowledged":true,"shards_acknowledged":true,"index":"words"}%
```

```bash
4] pry(main)> client.search(
  index: 'new_words',
  body: {
    "query": {
      "match": {
        "suggest": {
          "query": "dectmposipion",
          "fuzziness": "AUTO"
        }
      }
    }
  }
=> #<Elasticsearch::API::Response:0x00007fd98e134858
 @response=
  #<Elastic::Transport::Transport::Response:0x00007fd98e1348d0
   @body=
    {"took"=>38,
     "timed_out"=>false,
     "_shards"=>{"total"=>1, "successful"=>1, "skipped"=>0, "failed"=>0},
     "hits"=>
      {"total"=>{"value"=>10000, "relation"=>"gte"},
       "max_score"=>7.121604,
       "hits"=>
        [{"_index"=>"new_words", "_id"=>"yGGDJY8Bw9tf87G3Hkfh", "_score"=>7.121604, "_source"=>{"suggest"=>"autodecomposition"}},
         {"_index"=>"new_words", "_id"=>"iWKDJY8Bw9tf87G3H1ND", "_score"=>7.121604, "_source"=>{"suggest"=>"decomposition"}},
         {"_index"=>"new_words", "_id"=>"imKDJY8Bw9tf87G3H1ND", "_score"=>7.121604, "_source"=>{"suggest"=>"decompositional"}},
         {"_index"=>"new_words", "_id"=>"i2KDJY8Bw9tf87G3H1ND", "_score"=>7.121604, "_source"=>{"suggest"=>"decompositions"}},
         {"_index"=>"new_words", "_id"=>"jGKDJY8Bw9tf87G3H1ND", "_score"=>7.121604, "_source"=>{"suggest"=>"decomposition's"}},
         {"_index"=>"new_words", "_id"=>"AWSDJY8Bw9tf87G3H8S1", "_score"=>7.121604, "_source"=>{"suggest"=>"nondecomposition"}},
         {"_index"=>"new_words", "_id"=>"52WDJY8Bw9tf87G3H1bG", "_score"=>7.121604, "_source"=>{"suggest"=>"photodecomposition"}},
         {"_index"=>"new_words", "_id"=>"5mGDJY8Bw9tf87G3H_Ag", "_score"=>7.0796056, "_source"=>{"suggest"=>"circumposition"}},
         {"_index"=>"new_words", "_id"=>"y2KDJY8Bw9tf87G3HxAs", "_score"=>7.0796056, "_source"=>{"suggest"=>"composition"}},
         {"_index"=>"new_words", "_id"=>"zGKDJY8Bw9tf87G3HxAs", "_score"=>7.0796056, "_source"=>{"suggest"=>"compositional"}}]}},
   @headers={"x-elastic-product"=>"Elasticsearch", "content-type"=>"application/json", "content-encoding"=>"gzip", "transfer-encoding"=>"chunked"},
   @status=200>>
[5] pry(main)> client.search(
  index: 'new_words',
  body: {
    "query": {
      "match": {
        "suggest": {
          "query": "eectmposipion",
          "fuzziness": "AUTO"
        }
      }
    }
[5] pry(main)> client.search(
  index: 'new_words',
  body: {
    "query": {
      "match": {
        "suggest": {
          "query": "eectmposipion",
          "fuzziness": "AUTO"
        }
      }
    }
  }
=> #<Elasticsearch::API::Response:0x00007fd990331118
 @response=
  #<Elastic::Transport::Transport::Response:0x00007fd990331168
   @body=
    {"took"=>29,
     "timed_out"=>false,
     "_shards"=>{"total"=>1, "successful"=>1, "skipped"=>0, "failed"=>0},
     "hits"=>
      {"total"=>{"value"=>10000, "relation"=>"gte"},
       "max_score"=>7.0796056,
       "hits"=>
        [{"_index"=>"new_words", "_id"=>"yGGDJY8Bw9tf87G3Hkfh", "_score"=>7.0796056, "_source"=>{"suggest"=>"autodecomposition"}},
         {"_index"=>"new_words", "_id"=>"5mGDJY8Bw9tf87G3H_Ag", "_score"=>7.0796056, "_source"=>{"suggest"=>"circumposition"}},
         {"_index"=>"new_words", "_id"=>"y2KDJY8Bw9tf87G3HxAs", "_score"=>7.0796056, "_source"=>{"suggest"=>"composition"}},
         {"_index"=>"new_words", "_id"=>"zGKDJY8Bw9tf87G3HxAs", "_score"=>7.0796056, "_source"=>{"suggest"=>"compositional"}},
         {"_index"=>"new_words", "_id"=>"zWKDJY8Bw9tf87G3HxAs", "_score"=>7.0796056, "_source"=>{"suggest"=>"compositionally"}},
         {"_index"=>"new_words", "_id"=>"zmKDJY8Bw9tf87G3HxAs", "_score"=>7.0796056, "_source"=>{"suggest"=>"compositions"}},
         {"_index"=>"new_words", "_id"=>"iWKDJY8Bw9tf87G3H1ND", "_score"=>7.0796056, "_source"=>{"suggest"=>"decomposition"}},
         {"_index"=>"new_words", "_id"=>"imKDJY8Bw9tf87G3H1ND", "_score"=>7.0796056, "_source"=>{"suggest"=>"decompositional"}},
         {"_index"=>"new_words", "_id"=>"i2KDJY8Bw9tf87G3H1ND", "_score"=>7.0796056, "_source"=>{"suggest"=>"decompositions"}},
         {"_index"=>"new_words", "_id"=>"jGKDJY8Bw9tf87G3H1ND", "_score"=>7.0796056, "_source"=>{"suggest"=>"decomposition's"}}]}},
   @headers={"x-elastic-product"=>"Elasticsearch", "content-type"=>"application/json", "content-encoding"=>"gzip", "transfer-encoding"=>"chunked"},
   @status=200>>
[6] pry(main)> client.search(
  index: 'new_words',
  body: {
    "query": {
      "match": {
        "suggest": {
          "query": "dectmposipiop",
          "fuzziness": "AUTO"
        }
      }
    }
[6] pry(main)> client.search(
  index: 'new_words',
  body: {
    "query": {
      "match": {
        "suggest": {
          "query": "dectmposipiop",
          "fuzziness": "AUTO"
        }
      }
    }
  }
=> #<Elasticsearch::API::Response:0x00007fd994821408
 @response=
  #<Elastic::Transport::Transport::Response:0x00007fd994821458
   @body=
    {"took"=>23,
     "timed_out"=>false,
     "_shards"=>{"total"=>1, "successful"=>1, "skipped"=>0, "failed"=>0},
     "hits"=>
      {"total"=>{"value"=>10000, "relation"=>"gte"},
       "max_score"=>9.564146,
       "hits"=>
        [{"_index"=>"new_words", "_id"=>"yGGDJY8Bw9tf87G3Hkfh", "_score"=>9.564146, "_source"=>{"suggest"=>"autodecomposition"}},
         {"_index"=>"new_words", "_id"=>"h2KDJY8Bw9tf87G3H1ND", "_score"=>9.564146, "_source"=>{"suggest"=>"decomposing"}},
         {"_index"=>"new_words", "_id"=>"iGKDJY8Bw9tf87G3H1ND", "_score"=>9.564146, "_source"=>{"suggest"=>"decomposite"}},
         {"_index"=>"new_words", "_id"=>"iWKDJY8Bw9tf87G3H1ND", "_score"=>9.564146, "_source"=>{"suggest"=>"decomposition"}},
         {"_index"=>"new_words", "_id"=>"imKDJY8Bw9tf87G3H1ND", "_score"=>9.564146, "_source"=>{"suggest"=>"decompositional"}},
         {"_index"=>"new_words", "_id"=>"i2KDJY8Bw9tf87G3H1ND", "_score"=>9.564146, "_source"=>{"suggest"=>"decompositions"}},
         {"_index"=>"new_words", "_id"=>"jGKDJY8Bw9tf87G3H1ND", "_score"=>9.564146, "_source"=>{"suggest"=>"decomposition's"}},
         {"_index"=>"new_words", "_id"=>"AWSDJY8Bw9tf87G3H8S1", "_score"=>9.564146, "_source"=>{"suggest"=>"nondecomposition"}},
         {"_index"=>"new_words", "_id"=>"52WDJY8Bw9tf87G3H1bG", "_score"=>9.564146, "_source"=>{"suggest"=>"photodecomposition"}},
         {"_index"=>"new_words", "_id"=>"a2CDJY8Bw9tf87G3Hv6M", "_score"=>9.489529, "_source"=>{"suggest"=>"all-composing"}}]}},
   @headers={"x-elastic-product"=>"Elasticsearch", "content-type"=>"application/json", "content-encoding"=>"gzip", "transfer-encoding"=>"chunked"},
   @status=200>>
[7] pry(main)>

```