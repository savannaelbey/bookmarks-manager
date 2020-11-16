## Bookmark-manager

A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

## User Stories

```
As a student at Makers
So that I can quickly find important resources
I’d like to see a list of my bookmarked resources
```
## Domain model


### To set up the project
Clone this repository and then run:
```
 bundle
 ```

 ### To set up the database

 Connect to `psql` and create the `bookmark_manager` database:

 ```
 CREATE DATABASE bookmark_manager;
 ```

 To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

 ### To run the Bookmark Manager app:

 ```
 rackup -p 3000
 ```

 To view bookmarks, navigate to `localhost:3000/bookmarks`
 To view bookmarks, navigate to `localhost:3000/bookmarks`.

 ### To run tests:

```
rspec
```
### To run linting:
```
rubocop
```
