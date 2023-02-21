require_relative '../magazine.rb'
require_relative '../author.rb'
require_relative '../article.rb'
jeff = Author.new("Jeff")
kate = Author.new("kate")

trevs = Article.new("kate","Fenn", "Good People")

trevs = Article.new("trevs", "good", "lol")
mag1 = Magazine.new("Vogue", "fashion")
mag2 = Magazine.new("Vice", "crime")
mag3 = Magazine.new("Mock", "health")
mag4 = Magazine.new("Grammy", "music")
mag5 = Magazine.new("Emmy", "movie")
mag6 = Magazine.new("Fenn", "people")

jeff.add_article(mag5, "Not so good people")
jeff.add_article(mag4, "Goood people")
kate.add_article(mag6, "Lazy people")

pp jeff.articles
pp kate.articles


#
#puts self.all
puts trevs.author
#puts self.all_magazines
#puts mag3.name
puts mag3.category
#