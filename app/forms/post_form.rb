class PostForm < Patterns::Form
  param_key 'post'

  attribute :title, String
  attribute :content, String

  private

  def persist
    update_post
  end

  def update_post
    UpdatePost.call(post: resource, params: attributes)
  end
end
