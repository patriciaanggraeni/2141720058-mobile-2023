import 'package:flutter/material.dart';
import 'package:src/shop_app/model/game.dart';
import 'package:src/shop_app/seeder/helper.dart';
import 'package:src/shop_app/widgets/button/custom_button_share.dart';
import 'package:src/shop_app/widgets/custom_carousel_widget.dart';
import 'package:src/shop_app/widgets/custom_name_widget.dart';
import 'package:src/shop_app/widgets/price_and_buy/custom_price_and_buy_widget.dart';
import 'package:src/shop_app/widgets/rating_bar/custom_rating_bar_widget.dart';
import '../widgets/button/custom_button_back.dart';
import '../widgets/image/custom_background_image.dart';
import '../widgets/stock/custom_stock_widget.dart';
import '../widgets/rating_bar/custom_rating_bar_text_widget.dart';

class GameShopPage extends StatelessWidget {
  const GameShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = ModalRoute.of(context)!.settings.arguments as Game;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Game Detail"),
          titleTextStyle: Helper.customStyleFonts(
            size: 17,
            weigth: FontWeight.bold,
            spacing: 1.2,
            color: Colors.white
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    CustomGameImageBackground(items: items,),
                    CustomButtonBack(items: items, context: context,),
                    const CustomButtonShare(),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 420,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 20,
                      spreadRadius: 3,
                      offset: Offset(0, -5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomWidgetDetailItemName(items: items),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomRatingBarWidget(items: items,),
                          const SizedBox(width: 5,),
                          CustomRatingBarTextWidget(items: items),
                        ],
                      ),
                      const Spacer(flex: 1),
                      CustomCarouselSlider(items: items,),
                      const Spacer(flex: 1),
                      CustomStockWidget(items: items,),
                      const Spacer(flex: 1),
                      CustomPriceAndBuy(items: items,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
