import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:src/shop_app/pages/game_shop_page.dart';
import 'package:src/shop_app/seeder/ItemSeeder.dart';
import 'package:src/shop_app/seeder/helper.dart';
import 'package:src/shop_app/widgets/rating_bar/custom_rating_bar_widget.dart';

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
          child: StaggeredGridView.countBuilder(
            itemCount: items.length,
            crossAxisCount: 2,
            staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
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
                          Hero (
                            tag: 'game_cover_${item.image}',
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(item.image)
                            ),
                          ),
                          const Spacer(flex: 1,),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10,),
                              Text(
                                item.name,
                                style: Helper.customStyleFonts(
                                  size: 15,
                                  weigth: FontWeight.bold,
                                  spacing: 1.2,
                                  color: Colors.lightBlueAccent
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 5,),
                              Text(
                                "Rp${item.price}",
                                style: Helper.customStyleFonts(
                                  size: 10,
                                  weigth: FontWeight.normal,
                                  spacing: 1.2,
                                  color: Colors.lightBlueAccent
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          CustomRatingBarWidget(items: item,),
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