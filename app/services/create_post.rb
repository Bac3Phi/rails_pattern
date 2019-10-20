class CreatePost < Patterns::Service
  def initialize(post)
    @post = post
  end

  def call
    post.save
  end

  private

  attr_reader :post
end