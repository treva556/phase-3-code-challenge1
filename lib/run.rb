require_relative '../magazine.rb'
require_relative '../author.rb'
require_relative '../article.rb'
jeff = Author.new("Jeff")


trevs = Article.new("trevs", "good", "lol")
mag1 = Magazine.new("Vogue", "fashion")
mag2 = Magazine.new("Vice", "crime")
mag3 = Magazine.new("Mock", "health")
mag4 = Magazine.new("Grammy", "music")
mag5 = Magazine.new("Emmy", "movie")

jeff.add_article(mag5, "Not so good people")
jeff.add_article(mag4, "Goood people")

pp jeff.articles



#puts self.all
puts trevs.author
#puts self.all_magazines
#puts mag3.name
puts mag3.category