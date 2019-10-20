class PostsQuery < Patterns::Query
  queries Post

  private

  def query
    relation.all.order(created_at: :DESC)
  end

end