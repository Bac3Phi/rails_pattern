class UpdatePost < Patterns::Service
  def initialize(post:, params:)
    @post = post
    @params = params
  end

  def call
    post.update(params)
  end

  private

  attr_reader :post, :params
end