# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Landing.create([
	{name: "Anime offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709336758/devSources/carouselAnime1_syz7dy.png", category: "carousel" },
	{name: "Doll offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711119875/devSources/carouselMune_mswdho.png", category: "carousel" },
	{name: "Yu-Gi-Oh anime offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711119875/devSources/carouselMune_mswdho.png", category: "offer", offer: 35 },
	{name: "Animes", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709248312/devSources/animes_otaku_kly2au.png", category: "cat" },
    {name: "Clothes", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709247720/devSources/clothes_otaku_wnygyv.png", category: "cat" },
    {name: "Games", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709247953/devSources/games_otaku_wpsrsa.png", category: "cat" },
    {name: "Dolls", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709248201/devSources/dolls_otaku_xxgnje.png", category: "cat" },
    {name: "Cups", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709248515/devSources/cups_otaku_qiwniq.png", category: "cat" },
    {name: 'Dr. Stone T-Shirt for Women', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1708104077/devSources/arrivalTshirt_ttnqu4.png', category: "arrival"},
    {name: 'Dragon Ball Pullover for Men', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1708104077/devSources/arrivalTshirt_ttnqu4.png', category: "arrival"},
    {name: 'Dr. Stone Anime Cup', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1708104077/devSources/arrivalTshirt_ttnqu4.png', category: "arrival"},
    {name: 'Yu-Gi-Oh Trading Card Game', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1708104077/devSources/arrivalTshirt_ttnqu4.png', category: "arrival"},
    {name: 'Pokemon Trading Card Game', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1708104077/devSources/arrivalTshirt_ttnqu4.png', category: "arrival"},
    {name: 'Yu Yu Hakusho Yusuke Urameshi Doll', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1708104077/devSources/arrivalTshirt_ttnqu4.png', category: "arrival"}
])
