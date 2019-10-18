class CommentCountQuery < Patterns::Query
  queries Post

  private

  def query
    relation.comment.count
  end

end