# Creators School Sinatra skeleton

This is a very basic setup of a Sinatra app, that already has a model example.

## Getting Started

To get started run the following commands:

Install dependencies:
```
bundle install
```

Create database:
```
bundle exec rake db:create
```

Run migrations to update database schema:
```
bundle exec rake db:migrate
```

Whenever you need to update your database (add tables, add columns, etc), you should create a new migration file with the following command:
```
bundle exec rake db:create_migration NAME=migration_name
```
`migration_name` should be replaced with the name you want to give to the migration file.

*Note:* This app assumes you have
[sqlite3](https://www.sqlite.org/download.html).

## Running the app

To run the app we are using [shotgun](https://github.com/rtomayko/shotgun),
which means you can run just by typing `shotgun`.

## Adding some posts

In order to interact with the database you can run
[tux](https://github.com/cldwalker/tux), which is an interactive shell for
Sinatra. Start it by typing `tux`.

Once in the console, write:

```
Post.create title: "Some title"
exit
```
