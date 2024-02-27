# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
BlogPost.create(title: '10 Tips for Learning Python', content: 'Python is a great language to learn. Here are some tips to help you get started.', author: 'Henrique Rohden', published: Date.new(2022, 1, 1))
BlogPost.create(title: 'Understanding JavaScript Closures', content: 'Closures are a powerful feature of JavaScript. Learn how they work and how to use them.', author: 'Henrique Rohden', published: Date.new(2022, 1, 15))
BlogPost.create(title: "A Beginner's Guide to HTML and CSS", content: 'HTML and CSS are the building blocks of the web. Learn how to use them to create beautiful websites.', author: 'Henrique Rohden', published: Date.new(2022, 2, 1))
BlogPost.create(title: 'Exploring the New Features of React 17', content: 'React 17 has some great new features. Learn how to use them in your projects.', author: 'Henrique Rohden', published: Date.new(2022, 2, 15))
BlogPost.create(title: 'How to Build a RESTful API with Node.js', content: 'Node.js is a great platform for building APIs. Learn how to create a RESTful API with Node.', author: 'Henrique Rohden', published: Date.new(2022, 3, 1))
BlogPost.create(title: 'Demystifying Machine Learning: A Comprehensive Guide', content: 'Machine learning is a complex topic. Learn the basics and get started with your own projects.', author: 'Henrique Rohden', published: Date.new(2022, 3, 15))
BlogPost.create(title: 'Getting Started with Docker: A Step-by-Step Tutorial', content: 'Docker is a powerful tool for managing containers. Learn how to use it in your projects.', author: 'Henrique Rohden', published: Date.new(2022, 4, 1))
BlogPost.create(title: 'The Future of Web Development: Trends to Watch in 2022', content: 'Web development is always changing. Learn about the latest trends and how they will impact the future of the web.', author: 'Henrique Rohden', published: Date.new(2022, 4, 15))
# rubocop:enable Layout/LineLength
# rubocop:enable Lint/RedundantCopDisableDirective
