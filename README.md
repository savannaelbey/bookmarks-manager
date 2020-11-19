## Bookmark-manager

A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

## User Stories

```
As a student at Makers
I’d like to see a list of my bookmarks
So that I can find a bookmark quickly

As a student at Makers
I’d like to add new websites to my bookmark manager
So I can easily access my frequently used websites

As a student at makers
I'd like to delete bookmarks from my bookmark manager
so that I dont keep unwanted bookmarks.


```
## Domain model

<img width="887" alt="Screenshot 2020-11-16 at 21 24 51" src="https://user-images.githubusercontent.com/71889577/99310027-47aecf00-2852-11eb-80d0-e02bac440232.png">


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

 ### To set up the test database

 Connect to `psql` and create the `bookmark_manager_test` database:

 ```
 CREATE DATABASE bookmark_manager_test;
 ```

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
