# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clear existing data
Post.delete_all
Comment.delete_all

# Create seed data
post1 = Post.create(title: "Post 1", content: "This is post 1", created_at: DateTime.parse("2023-05-08 12:00:00"))
post2 = Post.create(title: "Post 2", content: "This is post 2", created_at: DateTime.parse("2023-05-08 12:01:00"))
post3 = Post.create(title: "Post 3", content: "This is post 3", created_at: DateTime.parse("2023-05-08 12:02:00"))

Comment.create(post: post1, content: "This is a comment on post 1", created_at: DateTime.parse("2023-05-08 12:00:00"))
Comment.create(post: post1, content: "This is another comment on post 1", created_at: DateTime.parse("2023-05-08 12:00:30"))
Comment.create(post: post1, content: "This is a third comment on post 1", created_at: DateTime.parse("2023-05-08 12:01:00"))
Comment.create(post: post2, content: "This is a comment on post 2", created_at: DateTime.parse("2023-05-08 12:01:00"))
Comment.create(post: post3, content: "This is a comment on post 3", created_at: DateTime.parse("2023-05-08 12:02:30"))
