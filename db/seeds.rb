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
	{name: "Pullover offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711811706/devSources/pulloverCarousel_yho9sg.png", category: "carousel", offer: 1 },
    {name: "Cup offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711811733/devSources/cupCarousel_prd5we.png", category: "carousel", offer: 1 },
    {name: "Anime offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711811759/devSources/animeCarousel_w4mbyk.png", category: "carousel", offer: 1 },
	{name: "Doll offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711811806/devSources/dollCarousel_yxibzq.png", category: "carousel", offer: 1 },
	{name: "Pokemon Doll offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711811843/devSources/enteiDollOffer_o2gitl.png", category: "offer", offer: 30 },
    {name: "DB Pullover offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711544908/devSources/pulOvBlaOffer_wzbx3h.png", category: "offer", offer: 25 },
	{name: "Animes", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709248312/devSources/animes_otaku_kly2au.png", category: "cat", offer: 9 },
    {name: "Clothes", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709247720/devSources/clothes_otaku_wnygyv.png", category: "cat", offer: 9 },
    {name: "Games", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709247953/devSources/games_otaku_wpsrsa.png", category: "cat", offer: 9 },
    {name: "Dolls", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709248201/devSources/dolls_otaku_xxgnje.png", category: "cat", offer: 9 },
    {name: "Cups", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709248515/devSources/cups_otaku_qiwniq.png", category: "cat", offer: 9 },
    {name: 'Dr. Stone T-Shirt for Women', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1708104077/devSources/arrivalTshirt_ttnqu4.png', category: "arrival", offer: 1},
    {name: 'Naruto Pullover for Men', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711217499/devSources/naruPullArrivals_y50vbx.png', category: "arrival", offer: 1},
    {name: 'Dr. Stone Anime Cup', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711217532/devSources/drStonBeiCupArrivals_phxdzp.png', category: "arrival", offer: 1},
    {name: 'Yu-Gi-Oh Trading Card Game', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711552894/devSources/yuGiOhGamOffer_vyceyw.png', category: "arrival", offer: 1},
    {name: 'Pokemon Trading Card Game', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711217581/devSources/pokeTradCarGamArrivals_ouwrbf.png', category: "arrival", offer: 1},
    {name: 'Yu Yu Hakusho Yusuke Urameshi Doll', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711217610/devSources/YuYuHakuDollArrivals_sshlyu.png', category: "arrival", offer: 1}
]);

Product.create([
    {name: "Dr. Stone White Medium Size Cup", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709336758/devSources/carouselAnime1_syz7dy.png", category: "Cups", price: 11, description: "-" },
    {name: "Dr. Stone Beige Small Size Cup", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711119875/devSources/carouselMune_mswdho.png", category: "Cups", price: 10.9, description: "-" },
    {name: "Yu-Gi-Oh anime offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711119875/devSources/carouselMune_mswdho.png", category: "Doll", price: 12.90, description: "-" },
    {name: "DBZ Goku on a Pedestal Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711217030/devSources/tshirtOffer_fwppku.png", category: "Doll", price: 11.9, description: "-" },
    {name: "Tyranitar Pokemon Small Size Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709248312/devSources/animes_otaku_kly2au.png", category: "Doll", price: 13.9, description: "-" },
    {name: "Milotic Pokemon Small Size Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709247720/devSources/clothes_otaku_wnygyv.png", category: "Doll", price: 13.5, description: "-" },
    {name: "Yu Yu Hakusho Yusuke Urameshi Small Size Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711217610/devSources/YuYuHakuDollArrivals_sshlyu.png", category: "Doll", price: 14, description: "-" },
    {name: "Pokemon Trading Card Game", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711288748/devSources/pokeTradingCarGameStore_ouh6qw.png", category: "Games", price: 19.5, description: "-" },
    {name: "Yu-Gi-Oh Trading Card Game", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711288796/devSources/YuGOhGameStore_k462it.png", category: "Games", price: 15.9, description: "-" },
    {name: 'Dr. Stone T-Shirt for Women', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1708104077/devSources/arrivalTshirt_ttnqu4.png', category: "Clothes", price: 25.9, description: "-"},
    {name: 'Naruto Red Pullover Medium Size for Men', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711217499/devSources/naruPullArrivals_y50vbx.png', category: "Clothes", price: 40.9, description: "-"},
    {name: 'Roshi Black Pullover Medium Size for Men', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711288928/devSources/pullBlacOvDBStore_q7iasw.png', category: "Clothes", price: 50.9, description: "-"},
    {name: 'One Piece 57th Volume Anime', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711289009/devSources/onePie57AnimeStore_numpst.png', category: "Animes", price: 8, description: "-"},
    {name: 'Yu-Gi-Oh 38th Volume Anime', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711289009/devSources/onePie57AnimeStore_numpst.png', category: "Animes", price: 8, description: "-"}
]);
