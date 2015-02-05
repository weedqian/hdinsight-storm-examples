{:name "wordcount"
 :topology
   (topology
      {"generator" (spout-spec sentence-spout)
       "generator2" (spout-spec (sentence-spout-parameterized
                     ["the cat jumped over the door"
                      "greetings from a faraway land"])
                     :p 2)}
      {"spliter" (bolt-spec {"generator" :shuffle "generator2" :shuffle}
                   split-sentence
                   :p 5)
       "counter" (bolt-spec {"spliter" ["word"]}
                   word-count
                   :p 6)})
 :config {"topology.workers" 2}
}
