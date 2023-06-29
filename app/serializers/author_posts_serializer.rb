class AuthorPostsSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  def short_content
    truncate(object.content, length: 40)
  end

  private

  def truncate(content, length: 40)
    return content if content.length <= length

    truncated_content = content[0...length]
    last_word_index = truncated_content.rindex(/\s|$/)
    truncated_content[0...last_word_index] + '...'
  end
end
