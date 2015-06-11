# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post = Post.create([{ title: "A Plate", image: "https://www.flickr.com/photos/133153716@N02/18025799773/in/album-72157653899992338/", body: "This is a white plate. Not much else to it. It is pretty boring really." }, {title: "A Table" , image: "https://www.flickr.com/photos/133153716@N02/18641793492/in/datetaken/", body: "This is a pretty ok table I guess." }, { title: "A Rock" , image: "https://www.flickr.com/photos/133153716@N02/18677624302/in/dateposted-public/" , body: "I don't know what you'd use this for. Maybe if you needed something heavy." }])