# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
new_articles = { "Bangladesh Cricket Board Election" => ["Bangladesh cricket board is an assortment of clouns and fools", "public"],
                 "Bangladesh Water Board Election" => ["Bangladesh cricket board is an assortment of clouns and fools", "public"],
                 "Bangladesh Railway Board Election" => ["Bangladesh cricket board is an assortment of clouns and fools", "public"],
                 "Bangladesh Electricity Board Election" => ["Bangladesh cricket board is an assortment of clouns and fools", "public"],
                 "Bangladesh Football Federation" => ["Bangladesh cricket board is an assortment of clouns and fools", "public"]}

  new_articles.each do |key, value|
    a = Article.new(title: key, body: value[0], status: value[1])
    a.save
  end
