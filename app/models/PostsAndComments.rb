class PostsAndComments
  attr_accessor :title, :content, :created_at, :record_type

  def initialize(hash)
    @title = hash['title']
    @content = hash['content']
    @created_at = hash['created_at']
    @record_type = hash['record_type']
  end
end
