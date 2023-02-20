class Article
    attr_reader :author, :magazine, :title

    @@all_articles = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all_articles  << self
    end

    def self.all
        @@all_articles
    end

end
=begin
trevs = Article.new("trevs", "good", "lol")
#puts self.all
puts trevs.author
=end

#trevs = Article.new("Jeff","Fenn", "Good People")