 #Donation Site
This app allowes users to donate to nonprofits using the Stripe API---WIP!

##Authors
[Anna Valkov](http://github.com/aavalkov) and [Dylan](http://github.com/peerend)

##Setup

You will need to create an account through Stripe.

In your terminal, clone the repo


Make sure you've installed [postgres](http://www.postgresql.org/download/) and have started the server:

```console
$ postgres
```

###Insert your credentials from Stripe:

create a file called .env and fill it with the following information:

PUBLISHABLE_KEY= ****insert number
SECRET_KEY= ***** insert number



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
