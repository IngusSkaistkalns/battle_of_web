## Battle of web

Start node

```
$ node app.js
```

Start sinatra

```
$ RACK_ENV=production puma --config puma.rb -w 0 -t 16:16 config.ru
```

## Benchamrk tool

**https://github.com/wg/wrk**

Node bench:

```
wrk -c 10 -d 10 -t 10 http://localhost:3000/numbers
```

Sionatra bench:

```
$ wrk -c 10 -d 10 -t 10 http://localhost:9292/numbers
```
