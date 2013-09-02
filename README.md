# sidekiq-examples

These are examples of Sidekiq workers that are used in the benchmarks for [goworker](https://github.com/benmanns/goworker). The workers reside in [app/workers](https://github.com/benmanns/sidekiq-examples/tree/master/app/workers).

To benchmark them yourself, run

```sh
redis-cli -r 100 RPUSH resque:queue:hello '{"class":"Hello","args":[]}'
redis-cli -r 100 RPUSH resque:queue:insert '{"class":"Insert","args":["John Doe","jdoe@example.com","(555) 555-5555"]}'
redis-cli -r 100 RPUSH resque:queue:multiply '{"class":"Multiply","args":[]}'
redis-cli -r 100 RPUSH resque:queue:sleep '{"class":"Sleep","args":[1]}'

git clone git@github.com:benmanns/sidekiq-examples.git
cd sidekiq-examples
bundle install
bundle exec rake db:migrate
time bundle exec sidekiq -q hello,insert,multiply,sleep
```

This app requires a local Postgres database. See [config/database.yml](https://github.com/benmanns/sidekiq-examples/blob/master/config/database.yml) for more information.
