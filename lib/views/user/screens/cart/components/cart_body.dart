import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waliima_app/models/cart.dart';
import 'package:waliima_app/size_config.dart';
import 'package:waliima_app/views/user/screens/cart/components/cart_item_card.dart';

class CartBody extends StatefulWidget {
  @override
  _CartBodyState createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (contex, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
              key: Key(demoCarts[index].product!.id.toString()),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(15),
              ),
                child: Row(
                  children: [
                    Spacer(),
                    SvgPicture.asset(
                      "assets/icons/trash.svg",
                      width: getProportionateScreenWidth(25),
                      color: Colors.red,
                    ),
                  ],
                ),
          ),
            onDismissed: (direction){
                setState(() {
                  demoCarts.removeAt(index);
                });
            },
            child: CartItemCard(cart: demoCarts[index],),
      ),
        ),
      ),
    );
  }
}


