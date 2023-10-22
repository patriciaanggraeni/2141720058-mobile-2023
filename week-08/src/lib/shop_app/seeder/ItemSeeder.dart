import '../model/game.dart';

class ItemSeeder {

  List<Game> listGame() => [
      Game(
          name: "Call of Duty: WWII",
          price: 300000,
          image: "assets/call_of_duty.png",
          gameDemoImage: callOfDutyDemoImage(),
          stock: 75,
          quantity: 0,
          rating: 4.4
      ),
      Game(
          name: "Minecraft",
          price: 250000,
          image: "assets/minecraft.png",
          gameDemoImage: minecraftDemoImage(),
          stock: 100,
          quantity: 0,
          rating: 4.5
      ),
      Game(
          name: "God of War: Ragnarok",
          price: 800000,
          image: "assets/god_of_war.png",
          gameDemoImage: goOfWarDemoImage(),
          stock: 120,
          quantity: 0,
          rating: 4.6
      ),
      Game(
          name: "Battlefield V",
          price: 590000,
          image: "assets/battlefield_v.png",
          gameDemoImage: battlefieldDemoImage(),
          stock: 50,
          quantity: 0,
          rating: 5.0
      ),
      Game(
          name: "Stray",
          price: 273000,
          image: "assets/stray.png",
          gameDemoImage: strayDemoimage(),
          stock: 150,
          quantity: 0,
          rating: 4
      ),
      Game(
          name: "Tekken 7",
          price: 400000,
          image: "assets/tekken_7.png",
          gameDemoImage: tekkenDemoImage(),
          stock: 200,
          quantity: 0,
          rating: 3.8
      ),
  ];

  List<String> callOfDutyDemoImage() => [
    "https://images.idgesg.net/images/article/2017/11/20171102221701_1-100741259-orig.jpg",
    "https://images.idgesg.net/images/article/2017/11/20171103170236_1-100741265-orig.jpg",
    "https://cdn.mos.cms.futurecdn.net/6yANLwbua64AhV3ncmjNNj-768-80.jpg",
    "https://assetsio.reedpopcdn.com/call_of_duty_ww2_launch_screens-6.jpg?width=1920&height=1920&fit=bounds&quality=80&format=jpg&auto=webp",
    "https://cdn.arstechnica.net/wp-content/uploads/2017/11/CoD-5-800x450.jpg",
  ];

  List<String> minecraftDemoImage() => [
    "https://c4.wallpaperflare.com/wallpaper/97/80/832/minecraft-shaders-video-games-wallpaper-preview.jpg",
    "https://c4.wallpaperflare.com/wallpaper/466/41/79/minecraft-shaders-wallpaper-preview.jpg",
    "https://c4.wallpaperflare.com/wallpaper/470/239/658/minecraft-shaders-hd-wallpaper-preview.jpg",
    "https://c4.wallpaperflare.com/wallpaper/225/644/9/minecraft-shaders-hd-wallpaper-preview.jpg",
    "https://c4.wallpaperflare.com/wallpaper/931/645/131/minecraft-widescreen-retina-imac-wallpaper-preview.jpg",
  ];

  List<String> goOfWarDemoImage() => [
    "https://gamingbolt.com/wp-content/uploads/2022/09/god-of-war-ragnarok-image-9.jpg",
    "https://c4.wallpaperflare.com/wallpaper/330/64/964/gow-god-of-war-playstation-playstation-5-playstation-4-hd-wallpaper-preview.jpg",
    "https://c4.wallpaperflare.com/wallpaper/705/580/865/gow-god-of-war-playstation-playstation-5-playstation-4-hd-wallpaper-preview.jpg",
    "https://prod.assets.earlygamecdn.com/images/God-of-War-Ragnar%C3%B6k-Best-Settings-min.png",
    "https://assetsio.reedpopcdn.com/god-of-war-ragnarok-review-header.png?width=1920&height=1920&fit=bounds&quality=80&format=jpg&auto=webp",
  ];

  List<String> battlefieldDemoImage() => [
    "https://c4.wallpaperflare.com/wallpaper/149/942/490/battlefield-battlefield-v-bfv-world-war-ii-wallpaper-preview.jpg",
    "https://c4.wallpaperflare.com/wallpaper/542/320/9/battlefield-battlefield-v-hd-wallpaper-preview.jpg",
    "https://c4.wallpaperflare.com/wallpaper/259/928/875/battlefield-v-battlefield-5-video-games-world-war-wallpaper-preview.jpg",
    "https://c4.wallpaperflare.com/wallpaper/584/26/383/battlefield-battlefield-v-soldier-hd-wallpaper-preview.jpg",
    "https://c4.wallpaperflare.com/wallpaper/48/331/605/battlefield-v-battlefield-screen-shot-soldier-snow-hd-wallpaper-preview.jpg",
  ];

  List<String> strayDemoimage() => [
    "https://c4.wallpaperflare.com/wallpaper/638/232/7/video-game-art-pc-gaming-video-games-screen-shot-stray-hd-wallpaper-preview.jpg",
    "https://c4.wallpaperflare.com/wallpaper/798/626/524/stray-cyberpunk-city-dystopian-cats-hd-wallpaper-preview.jpg",
    "https://c4.wallpaperflare.com/wallpaper/894/341/237/stray-cats-robot-city-futurism-hd-wallpaper-preview.jpg",
    "https://c4.wallpaperflare.com/wallpaper/396/681/145/cats-stray-dark-background-hd-wallpaper-preview.jpg",
    "https://c4.wallpaperflare.com/wallpaper/397/134/547/stray-cats-orange-hallway-hd-wallpaper-preview.jpg",
  ];

  List<String> tekkenDemoImage() => [
    "https://assets.altarofgaming.com/wp-content/uploads/2020/11/character-selection-screen-tekken-7.jpg",
    "https://images.indianexpress.com/2020/06/Tekken7.jpg",
    "https://cdn.akamai.steamstatic.com/steam/apps/389730/ss_d92a558644ad60ae5814fc4d2bbaebc5abf62fa3.1920x1080.jpg",
    "https://cdn.akamai.steamstatic.com/steam/apps/389730/ss_40faa5ba39563cb899f1ab2ddd2afbf8b451d52f.1920x1080.jpg?",
    "https://cdn.akamai.steamstatic.com/steam/apps/389730/ss_e4266a29ed7485522c85ff61b454f3765151a0db.1920x1080.jpg",
  ];
}