# Photogram READ

Our goal in this project is to synthesize everything we've learned about:

 - Relational database design
 - Ruby
 - Querying
 - RCAV
 - Flexible route segments and the `params` hash

This is our target: [https://photogram-read-target.herokuapp.com/](https://photogram-read-target.herokuapp.com/)

## Domain model/setup

It's the familiar old Photogram domain model:

![Domain Model](erd.png?raw=true "Domain Model")

 - After you've run `bin/setup`, the tables will already be created for you. You can pop into `rails console` and verify for yourself if you want to.

 - Click "Run Project" to start up your server and navigate to your live application. You'll see that it's just the "Yay! You're on Rails" page — other than the database, this is a blank application. There are no routes. Check out `config/routes.rb` to verify this.

 - Run `rails dummy:reset` to pre-populate all of the tables with some dummy data.

    > Note that if for some reason later you want to reset the database again, you need to first destroy it:
    >
    > ```bash
    > rails db:drop
    > ```
    >
    > and then re-create and re-populate it:
    >
    > ```bash
    > rails db:migrate
    > rails dummy:reset
    > ```

## Tasks

 - Build support for `/recent`, which should show the photos in the table ordered from newest to oldest. Show only the 25 photos.
 - Build support for `/popular`, which should show the photos in the table ordered from most liked to least liked. Show only 25 photos.
 - Build support for `/photos/42`, `/photos/123`, etc — where `42`, `123`, etc, are the ID numbers of photos. These pages should show the details of individual photos, including the caption, owner's username, how long ago it was posted, the usernames of the photo's fans, and the comments left on the photo.
 - Build support for `/users`, which should show all of the users ordered by username.
 - Build support for `/users/42`, `/users/123`, etc — where `42`, `123`, etc, are the ID numbers of users.
 - Build support for `/users/42/liked`.
 - Build support for `/users/42/feed`.
 - Build support for `/users/42/discover`.

See the target for how each URL should behave.
