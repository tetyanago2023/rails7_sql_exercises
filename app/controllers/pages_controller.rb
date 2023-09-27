class PagesController < ApplicationController
  def home
    def home
      @records = Post.find_by_sql("
    SELECT title, content, created_at, 'Post' as record_type
    FROM posts
    UNION
    SELECT NULL as title, comments.content, comments.created_at, 'Comment' as record_type
    FROM comments
    INNER JOIN posts ON posts.id = comments.post_id
    ORDER BY created_at ASC, content ASC;
  ")
    end
  end
end
