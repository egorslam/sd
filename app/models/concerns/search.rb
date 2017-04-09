module Search
	def self.books_and_articles(filter, query)

		return nil unless %w{name genres authors publisher}.include? filter

		books_array = Book.where("#{filter} LIKE ?", '%' + query + '%').to_a
		articles_array = Article.where("#{filter} LIKE ?", '%' + query + '%').to_a

		{ books: books_array, articles: articles_array }
	end
end