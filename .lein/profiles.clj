{:user {:plugins [[lein-kibit "0.0.8"]
                  [jonase/eastwood "0.0.2"]]
        :repl-options {:init (do
                               (require '[clojure.pprint :refer :all]
                                        '[clojure.reflect :refer :all])
                               ; http://clojuredocs.org/clojure_core/clojure.pprint/print-table
                               ; example: (inspect clojure.lang.BigInt)
                               (defn inspect [o]
                                 (let [r (:members (reflect o))] ;
                                   (print-table [:name :type :flags]
                                                (sort-by :name r)))))}}}