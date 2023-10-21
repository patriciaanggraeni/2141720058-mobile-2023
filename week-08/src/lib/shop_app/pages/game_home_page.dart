import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:src/shop_app/pages/game_shop_page.dart';
import 'package:src/shop_app/seeder/ItemSeeder.dart';
import 'package:src/shop_app/seeder/helper.dart';

import '../model/game.dart';

class GameHomePage extends StatelessWidget {
  GameHomePage({super.key});

  final items = ItemSeeder().listGame();
  static const String homePageRoutes = '/game_home_page';
  static const String shopPageRoutes = '/game_shop_page';

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: "Shop App",
      darkTheme: ThemeData.light(),
      initialRoute: '/',
      routes: {
        homePageRoutes: (context) => GameHomePage(),
        shopPageRoutes: (context) => const GameShopPage(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Games Mall",
            style: Helper.customStyleFonts(
                size: 17,
                weigth: FontWeight.bold,
                spacing: 1.2,
                color: Colors.white
            )
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () => Navigator.pushNamed(context, shopPageRoutes, arguments: item),
                child: IntrinsicHeight(
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Image(
                              image: NetworkImage(item.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Spacer(flex: 1,),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.name,
                                style: Helper.customStyleFonts(
                                  size: 17,
                                  weigth: FontWeight.bold,
                                  spacing: 1.2,
                                  color: Colors.lightBlueAccent
                                )
                              ),
                              const SizedBox(height: 4,),
                              Text(
                                  "Rp${item.price}",
                                  style: GoogleFonts.questrial(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2,
                                    textBaseline: TextBaseline.ideographic
                                  )
                              ),
                            ],
                          ),
                          const Spacer(flex: 1,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RatingBar.builder(
                                initialRating: item.rating,
                                minRating: 0.5,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                onRatingUpdate: (rating) {},
                                itemSize: 15,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.teal,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        ),
      ),
    );
  }
}