# Create a demo user
User.create!(
  name: 'demo_user',
  email: 'demo_user@example.com',
  password: 'password123',
  password_confirmation: 'password123'
)

Landing.create([
	{name: "Pullover offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711811706/devSources/pulloverCarousel_yho9sg.png", category: "carousel", offer: 1 },
    {name: "Cup offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711811733/devSources/cupCarousel_prd5we.png", category: "carousel", offer: 1 },
    {name: "Anime offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711811759/devSources/animeCarousel_w4mbyk.png", category: "carousel", offer: 1 },
	{name: "Doll offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711811806/devSources/dollCarousel_yxibzq.png", category: "carousel", offer: 1 },
	{name: "Pokemon Doll offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711811843/devSources/enteiDollOffer_o2gitl.png", category: "offer", offer: 30 },
    {name: "DB Pullover offer", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711544908/devSources/pulOvBlaOffer_wzbx3h.png", category: "offer", offer: 25 },
	{name: "Mangas", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709248312/devSources/animes_otaku_kly2au.png", category: "cat", offer: 12 },
    {name: "Clothes", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709247720/devSources/clothes_otaku_wnygyv.png", category: "cat", offer: 12 },
    {name: "Games", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709247953/devSources/games_otaku_wpsrsa.png", category: "cat", offer: 12 },
    {name: "Dolls", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709248201/devSources/dolls_otaku_xxgnje.png", category: "cat", offer: 12 },
    {name: "Mugs", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1709248515/devSources/cups_otaku_qiwniq.png", category: "cat", offer: 12 },
    {name: 'Dr. Stone T-Shirt for Women', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1708104077/devSources/arrivalTshirt_ttnqu4.png', category: "arrival", offer: 1},
    {name: 'Naruto Pullover for Men', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711217499/devSources/naruPullArrivals_y50vbx.png', category: "arrival", offer: 1},
    {name: 'Dr. Stone Anime Cup', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711217532/devSources/drStonBeiCupArrivals_phxdzp.png', category: "arrival", offer: 1},
    {name: 'Yu-Gi-Oh Trading Card Game', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711552894/devSources/yuGiOhGamOffer_vyceyw.png', category: "arrival", offer: 1},
    {name: 'Pokemon Trading Card Game', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711217581/devSources/pokeTradCarGamArrivals_ouwrbf.png', category: "arrival", offer: 1},
    {name: 'Yu Yu Hakusho Yusuke Urameshi Doll', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711217610/devSources/YuYuHakuDollArrivals_sshlyu.png', category: "arrival", offer: 1}
]);

Product.create([
    {name: "Dr. Stone Mug", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1712691767/devSources/cupDrStoneWhiStoe_uhlfwh.png", category: "Mugs", ori_price: 20.95, sale_price: 15.90, color:"White", description: "-" },
    {name: "Dr. Stone Mug", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1712692297/devSources/mugbeigSmalDrStonStor_tednky.png", category: "Mugs", ori_price: 18.90, sale_price: 14.50, color:"Beige", description: "-" },
    {name: "Naruto Mug", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1712699990/devSources/cupNaruMediWhiStor_s3agse.png", category: "Mugs", ori_price: 19.99, sale_price: 14.99, color:"White", description: "-" },
    {name: "One Piece Mug", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1713973392/devSources/onePiCupBlaStor_f8bog8.png", category: "Mugs", ori_price: 17.99, sale_price: 13.99, color:"Black", description: "-" },
    {name: "Full Metal Alchemist Mug", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1714662721/devSources/bluCupFulMetAlchStor_w7vfcg.png", category: "Mugs", ori_price: 16.59, sale_price: 11.99, color:"Blue", description: "-" },
    {name: "Pokemon Double Handle Mug", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1714744148/devSources/whitCuPikaPokeStor_siqrnw.png", category: "Mugs", ori_price: 15.90, sale_price: 10.90, color:"White", description: "-" },
    {name: "Gintama Handle Mug", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1715176118/devSources/celesMugGintamAtor_gr24rd.png", category: "Mugs", ori_price: 15.90, sale_price: 10.90, color:"Sky Blue", description: "-" },
    {name: "Shingeki no Kyojin Mug", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1715263107/devSources/beigMugShingenoKyojSto_xatoc1.png", category: "Mugs", ori_price: 14.50, sale_price: 9.99, color:"Beige", description: "-" },
    {name: "Goku Dragon Ball Z Mug", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1715346519/devSources/whitMugGokDBZStor_boubsh.png", category: "Mugs", ori_price: 17.50, sale_price: 11.90, color:"White", description: "-" },
    {name: "Gon Freecss Hunter x Hunter Mug", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1716215744/devSources/HuntxHunBeugMugStor_vurnzv.png", category: "Mugs", ori_price: 15.50, sale_price: 9.99, color:"Beige", description: "-" },
    {name: "Cowboy Bebop Spike Spiegel Mug", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1716388612/devSources/cowbBeboSpikSpiegMugWhiStore_alj56t.png", category: "Mugs", ori_price: 14.99, sale_price: 9.59, color:"White", description: "-" },
    {name: "One Piece Roronoa Zoro Mug", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1716389534/devSources/ZoroOnePieMugGrayStore_qpbuet.png", category: "Mugs", ori_price: 16.99, sale_price: 10.59, color:"Gray", description: "-" },
    {name: "Articuno Pokemon Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1712700242/devSources/articunoDollStore_y4ol7f.png", category: "Dolls", ori_price: 9.90, sale_price: 6.90, description: "-" },
    {name: "DBZ Goku on a Pedestal Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1712700377/devSources/goku1DBZDollStore_pjhpoa.png", category: "Dolls", ori_price: 10.99, sale_price: 7.99, description: "-" },
    {name: "Tyranitar Pokemon Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1712700422/devSources/tyraDollStore_ojlamk.png", category: "Dolls", ori_price: 13.89, sale_price: 9.59, description: "-" },
    {name: "Milotic Pokemon Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1712700492/devSources/miloticDollStore_oyivw9.png", category: "Dolls", ori_price: 15.90, sale_price: 11.50, description: "-" },
    {name: "Yu Yu Hakusho Yusuke Urameshi Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1712700538/devSources/YuYuHakuUrameDollStore_snjbb8.png", category: "Dolls", ori_price: 16.99, sale_price: 12.59, description: "-" },
    {name: "Moltres Pokemon Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1714061668/devSources/moltresDollStor_l8a8xo.png", category: "Dolls", ori_price: 14.19, sale_price: 9.99, description: "-" },
    {name: "Shingeki no Kyojin Eren Jaeger Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1715432352/devSources/shingNoKyoEreJaegDolStor_szstbu.png", category: "Dolls", ori_price: 13.99, sale_price: 8.99, description: "-" },
    {name: "One Piece Monkey D. Luffy Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1715536035/devSources/OnePieMonkDolSotr_d9nbm4.png", category: "Dolls", ori_price: 12.50, sale_price: 7.59, description: "-" },
    {name: "Gintama Sakata Gintoki Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1715603162/devSources/gintaSakaGinDolStor_tc7plq.png", category: "Dolls", ori_price: 13.50, sale_price: 7.99, description: "-" },
    {name: "Full Metal Alchemist Edward Elric Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1715694795/devSources/fulMetAlchemEdwaElrDolStor_uypdxc.png", category: "Dolls", ori_price: 11.99, sale_price: 6.50, description: "-" },
    {name: "Naruto Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1715826174/devSources/narutDolStor_ajbhof.png", category: "Dolls", ori_price: 12.50, sale_price: 7.50, description: "-" },
    {name: "Yu-Gi-Oh Yamu Yugi Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1715970685/devSources/yuGiOhYamYugiDolStor_scqazp.png", category: "Dolls", ori_price: 11.50, sale_price: 6.99, description: "-" },
    {name: "Pokemon Trading Card Game", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711288748/devSources/pokeTradingCarGameStore_ouh6qw.png", category: "Games", ori_price: 23.99, sale_price: 17.99, description: "-" },
    {name: "Yu-Gi-Oh Trading Card Game", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1711288796/devSources/YuGOhGameStore_k462it.png", category: "Games", ori_price: 20.90, sale_price: 15.90, description: "-" },
    {name: "Cowboy Bebop: Space Serenade Game", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1717703642/devSources/CowboyBebopSpaceSerenadeGamStor_v9zxdy.png", category: "Games", ori_price: 20.90, sale_price: 15.90, description: "-" },
    {name: "Trivial Dragon Ball Z Game", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1716151821/devSources/dBallZT_rivGameStor_mwxkbo.png", category: "Games", ori_price: 22.90, sale_price: 17.90, description: "-" },
    {name: "One Piece: Adventure Island Game", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1716152084/devSources/OnePiecBoardAdventGameStor_m1n99k.png", category: "Games", ori_price: 19.99, sale_price: 14.95, description: "-" },
    {name: "Death Note: confrontation game Game", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1716152113/devSources/DeaNoteCardGameStor_dyq416.png", category: "Games", ori_price: 21.99, sale_price: 16.99, description: "-" },
    {name: "Tokyo Ghoul: bloody masquerade Game", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1716152147/devSources/TokyGhouBoaGameStor_fibzfd.png", category: "Games", ori_price: 20.99, sale_price: 15.99, description: "-" },
    {name: "Attack On Titan The Last Stand Game", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1717703552/devSources/AttackOnTitanTheLastStandGameStor_sm5tih.png", category: "Games", ori_price: 22.99, sale_price: 18.99, description: "-" },
    {name: "Naruto Ninja Arena Game", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1717501858/devSources/NarutoNinjaArenaGamStor_szeehu.png", category: "Games", ori_price: 18.59, sale_price: 15.59, description: "-" },
    {name: "Square Enix Fullmetal Alchemist Game", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1717502002/devSources/SquareEnixFullmetalAlchemistGameStor_cwqtlm.png", category: "Games", ori_price: 19.59, sale_price: 14.99, description: "-" },
    {name: "Hunter X Hunter Gungi Game", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1717502150/devSources/HunterXHunterGungiGameStor_gwxmkg.png", category: "Games", ori_price: 24.99, sale_price: 20.99, description: "-" },
    {name: "Gintama Tsukkomi Karuta Game", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1717703437/devSources/GintamaTsukkomiKarutaGameSto_zykfx7.png", category: "Games", ori_price: 23.99, sale_price: 19.99, description: "-" },
    {name: 'Dr. Stone T-Shirt', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1708104077/devSources/arrivalTshirt_ttnqu4.png', category: "Clothes", ori_price: 22.90, sale_price: 16.90, color:"White", description: "-"},
    {name: 'Naruto Pullover', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711217499/devSources/naruPullArrivals_y50vbx.png', category: "Clothes", ori_price: 59.9, sale_price: 40.90, color:"Red", description: "-"},
    {name: 'Roshi Pullover', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711288928/devSources/pullBlacOvDBStore_q7iasw.png', category: "Clothes", ori_price: 70.99, sale_price: 50.90, color:"Black", description: "-"},
    {name: 'Fullmetal Alchemist Shirt', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1714242340/devSources/shirBluFulMetAlcheStor_cya6il.png', category: "Clothes", ori_price: 30.99, sale_price: 22.99, color:"Blue", description: "-"},
    {name: 'Dr. Stone Pullover', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1712689988/devSources/whitWomenPullDrSton_n1cc1z.png', category: "Clothes", ori_price: 79.90, sale_price: 59.99, color:"White", description: "-"},
    {name: 'Neon Genesis Evangelion Pullover', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1714149092/devSources/pullPurpEvangeStor_rik30p.png', category: "Clothes", ori_price: 67.99, sale_price: 49.99, color:"Purple", description: "-"},
    {name: 'One Piece Monkey D. Luffy T-shirt', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1714842470/devSources/redtShirOnePieStor_cpahqb.png', category: "Clothes", ori_price: 27.99, sale_price: 19.99, color:"Red", description: "-"},
    {name: 'Shingeki no Kyojin T-shirt', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1714918244/devSources/beigtshiAtaquTitaStor2_hwcbgr.png', category: "Clothes", ori_price: 23.99, sale_price: 17.99, color:"Beige", description: "-"},
    {name: 'Shingeki no Kyojin T-shirt', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1714918218/devSources/beigtshiAtaquTitaStor1_k0vw8j.png', category: "Clothes", ori_price: 23.99, sale_price: 17.99, color:"Beige", description: "-"},
    {name: 'Gintoki Sakata Gintama T-shirt', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1715087683/devSources/blactshiGintaGintoSakaStor_labmzn.png', category: "Clothes", ori_price: 22.99, sale_price: 16.99, color:"Black", description: "-"},
    {name: 'Gintoki Sakata Gintama T-shirt', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1715087843/devSources/whittshiGintaGintoSakaStor_vw4phd.png', category: "Clothes", ori_price: 22.99, sale_price: 16.99, color:"White", description: "-"},
    {name: 'Roronoa Zoro One Piece T-shirt', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1716068966/devSources/tShirtGreeZoroOnePicStor_u0vgoz.png', category: "Clothes", ori_price: 25.99, sale_price: 17.99, color:"Green", description: "-"},
    {name: 'One Piece 57th Volume Manga', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711289009/devSources/onePie57AnimeStore_numpst.png', category: "Mangas", ori_price: 9.50, sale_price: 6.50, description: "-"},
    {name: 'Hunter x Hunter 37th Volume Manga', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1712690899/devSources/hunxHunAnimStore_zjajt7.png', category: "Mangas", ori_price: 9.99, sale_price: 6.99, description: "-"},
    {name: 'Full Metal Alchemist 27th Volume Manga', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1714490281/devSources/fullMetVol27AniStor_hikfty.png', category: "Mangas", ori_price: 11.99, sale_price: 8.99, description: "-"},
    {name: 'Gintama 75th Volume Manga', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1714575120/devSources/gintamVol75AniStor_us4e0t.png', category: "Mangas", ori_price: 12.59, sale_price: 8.99, description: "-"},
    {name: 'Shingeki no Kyojin 34th Volume Manga', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1715000992/devSources/ShingNoKyoj34VolAnimStor_g978qv.png', category: "Mangas", ori_price: 13.90, sale_price: 9.90, description: "-"},
    {name: 'Dr. Stone 27th Volume Manga', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1715899317/devSources/DrStonMangVolu27Stor_iysywa.png', category: "Mangas", ori_price: 13.99, sale_price: 10.99, description: "-"},
    {name: 'Cowboy Bebop 3rd Volume Manga', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1716660105/devSources/cowBoyBeboMangVol3Stor_fvib7f.png', category: "Mangas", ori_price: 11.99, sale_price: 8.99, description: "-"},
    {name: 'Steins;Gate 3rd Volume Manga', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1716747755/devSources/SteiGateVol3MangStor_sdq4zl.png', category: "Mangas", ori_price: 11.50, sale_price: 7.99, description: "-"},
    {name: 'Naruto 72th Volume Manga', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1717433678/devSources/NaruMangVol72Stor_jpjvwb.png', category: "Mangas", ori_price: 10.50, sale_price: 7.50, description: "-"},
    {name: 'Mob Psycho 100 16th Volume Manga', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1717433709/devSources/mobPsych100MangVol16Stor_g5jbgj.png', category: "Mangas", ori_price: 10.99, sale_price: 6.99, description: "-"},
    {name: 'Neo Genesis Evangelion 16th Volume Manga', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1717433735/devSources/neoGeneevangeMangVol14Stor_bzngxc.png', category: "Mangas", ori_price: 9.99, sale_price: 6.99, description: "-"},
    {name: 'Yu-Gi-Oh 38th Volume Manga', image: 'https://res.cloudinary.com/dv1mouzbi/image/upload/v1711289138/devSources/yugiOhAnimeStore_z3rs0c.png', category: "Mangas", ori_price: 8.50, sale_price: 5.50, description: "-"}
]);

Discount.create([
	{name: "Nico Robin One Piece Mug", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1718903862/devSources/OnePieRobinOragOfferPage_fhowut.png", current_price: 11.99, offer_price: 7.99, normal_price: 19.99, percentage: 60, category: "Mugs" },
    {name: "Killua Zolduyck Hunter x Hunter Doll", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1719064703/devSources/KilluZolduHunteHuntDoll_gg0aou.png", current_price: 14.99, offer_price: 9.99, normal_price: 20.99, percentage: 53, category: "Dolls" },
    {name: "Kurapika Hunter x Hunter Pullover", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1719065006/devSources/HuntexHunKurapikaPullovDisco_z7o9w7.png", current_price: 29.99, offer_price: 21.99, normal_price: 39.99, percentage: 27, category: "Clothes" },
    {name: "Katsuya Jōnouchi Yu-Gi-Oh t-shirt ", image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1718903892/devSources/YugiOGreeLigOffe_aeys3w.png", current_price: 21.99, offer_price: 17.99, normal_price: 29.99, percentage: 40, category: "Clothes" }
]);