CrawlEm
======

Making a web crawler in Ruby. 

Setting Up
--------

First you need to clone this project somewhere onto your computer. Using your terminal, navigate to the location you want to store the project then paste in the following:

```bash
git clone https://github.com/salexzee/CrawlEm.git
```

Next, you'll need the Mechanize gem so that the project can interact with websites.

```bash
gem install mechanize
```

Finally, you'll need a file called `urls.txt` to store the crawled URLs.

```bash
touch urls.txt
```

Now just add 1 or more URLs to `urls.txt` and you'll be able to run the program.

Running the program
---------
It's simple, just run it like any other Ruby program.

```bash
ruby crawlem.rb
```

If everything is working correctly, you will see something similar to:

```bash
Checked: http://easifyjs.com/
---------------------
Checked: http://alicejobs.com/
---------------------
Checked: https://github.com/salexzee/PrimePy
---------------------
Checked: http://codingtestsite.com/
---------------------
Checked: https://github.com/salexzee/serialize
---------------------
Checked: https://github.com/stympy/faker
---------------------
Checked: http://samwebb.me/articles?tag=javascript
---------------------
Checked: http://samwebb.me/articles?tag=css
---------------------
Checked: http://samwebb.me/articles?tag=rubyonrails
---------------------
Checked: http://samwebb.me/articles?tag=html
---------------------
Checked: http://samwebb.me/articles?tag=python
---------------------
Status Update: 23 links found.
```

Credit
---------

I would like to give credit to the [rubyacademy](https://www.youtube.com/channel/UCWcM9Y34UY-WD_7TkSpivIw) YouTube page for getting me started with this. Check out the [First Video](https://www.youtube.com/watch?v=mMHflTR-MuY) in a 3 part video series that shows how to make a basic web crawler in Ruby.
