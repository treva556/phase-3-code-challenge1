class Author
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
      @@all
    end

   
   def articles
    Article.all.filter{|article| article.author == @name}
  end

  def magazine 
    articles.map{|article| article.magazine}.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazine.map{|magazine| magazine.category}.uniq
  end
end

# puts jeff.name
# jeff.add_article("Fenn", "Not so good people")
# fenn = mag
# title = Good People
# puts jeff.articles  -