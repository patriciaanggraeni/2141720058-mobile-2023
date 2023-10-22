import 'package:flutter/material.dart';
import 'package:src/shop_app/widgets/button/custom_button_minus.dart';
import 'package:src/shop_app/widgets/button/custom_button_plus.dart';
import '../../model/game.dart';
import '../../seeder/helper.dart';

class CustomStockWidget extends StatefulWidget {
  const CustomStockWidget({super.key, required this.items});
  final Game items;

  @override
  State<StatefulWidget> createState() => _CustomStockWidgetState();
}

class _CustomStockWidgetState extends State<CustomStockWidget> {

  @override
  Widget build(BuildContext context) {
    int maxStock = widget.items.stock;

    return SizedBox (
      width: MediaQuery.of(context).size.width,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Available Copy: ${widget.items.stock.toString()}",
            style: Helper.customStyleFonts(
              size: 15,
              weigth: FontWeight.bold,
              spacing: 1.0,
              color: Colors.lightBlueAccent
            ),
          ),
          Row(
             mainAxisSize: MainAxisSize.max,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               ElevatedButton(
                 onPressed: () {
                   if (widget.items.quantity == 0) {
                     setState(() { widget.items.quantity = 0;  });
                   } else {
                     setState(() {
                       widget.items.quantity--;
                       widget.items.stock++;
                    });
                   }
                 },
                 style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const CircleBorder(),
                    minimumSize: const Size(30, 30),
                    padding: EdgeInsets.zero,
                    side: BorderSide(color: Colors.blue.shade200),
                 ),
                 child: const Icon(
                   Icons.remove,
                   size: 15,
                   color: Colors.black,
                 ),
               ),
               const SizedBox(width: 10,),
               Text(widget.items.quantity.toString(),
                   style: Helper.customStyleFonts(
                     size: 15,
                     weigth: FontWeight.bold,
                     spacing: 1.0,
                     color: Colors.lightBlueAccent,
                   )
               ),
               const SizedBox(width: 10,),
               ElevatedButton(
                 onPressed: () {
                   if (widget.items.quantity == maxStock) {
                     setState(() { widget.items.quantity = maxStock;  });
                   } else {
                     setState(() {
                       widget.items.quantity++;
                       widget.items.stock--;
                     });
                   }
                 },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.white,
                   shape: const CircleBorder(),
                   minimumSize: const Size(30, 30),
                   padding: EdgeInsets.zero,
                   side: BorderSide(color: Colors.blue.shade200),
                 ),
                 child: const Icon(
                   Icons.add,
                   size: 15,
                   color: Colors.black,
                 ),
               ),
             ],
           ),
        ],
      ),
    );
  }
}