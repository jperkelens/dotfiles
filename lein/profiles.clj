{:user {:dependencies [[org.clojars.gjahad/debug-repl "0.3.3"]
                       [im.chit/vinyasa "0.1.8"]]
        :injections [(require 'vinyasa.inject)
                     (vinyasa.inject/inject 'clojure.core '>
                                            '[[clojure.repl doc source]
                                              [clojure.pprint pprint pp]])]}}
