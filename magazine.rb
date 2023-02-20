class Magazine
    attr_accessor :name, :category

    @@all_magazines = []

    def initialize(name, category)
        @name = name
        @category = category
        @@all_magazines << self
    end

    def self.all
        @@all_magazines
    end

    def contributors
        Article.all.select { |article| article.magazine == self }.map { |article| article.author }.uniq
        end
        
        def self.find_by_name(name)
        self.all.find { |magazine| magazine.name == name }
        end
        
        def article_titles
        Article.all.select { |article| article.magazine == self }.map { |article| article.title }
        end
        
        def contributing_authors
        self.contributors.select { |author| author.articles.count > 2 }
        end

end


mag7= Magazine.new("Tetra", "hope")
=begin
mag = Magazine.new("good", "ruu")
puts mag.name
=end
pp Magazine.find_by_name("Tetra")

#puts self.all
# puts mag3.name
# puts mag3.category
