#Quick ToDo List
This app is a quick to do list for users.

##Authors
[Keebz](http://github.com/keebz)

##Setup
In your terminal, clone this repo:

```console
$ clone https://github.com/keebz/todo_Ajax_practice.git
```

Make sure you've installed [postgres](http://www.postgresql.org/download/) and have started the server:

```console
$ postgres
```

Install all the dependencies:

```console
$ bundle install
```

Set up the databases on your local machine:

```console
$ rake db:create
$ rake db:schema:load
```

Finally, start the rails server:

```console
$ rails s
```
It should now be available at `localhost:3000`.

##License
MIT
