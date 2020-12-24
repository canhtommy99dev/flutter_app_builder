import 'package:flutter/material.dart';
import 'package:flutter_app_builder/Model/Product.dart';
import 'package:flutter_app_builder/Screens/details/components/colorandsize.dart';
import 'package:flutter_app_builder/Screens/details/components/product_title_detail.dart';

import '../../../constrants.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var kTextColor2 = kTextColor;
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      SizedBox(
          height: size.height,
          child: Stack(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  child: Column(
                      children: <Widget>[ColorAndSize(product: product)])),
              ProductTileImage(product: product),
            ],
          ))
    ]));
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
          decoration: BoxDecoration(
        color: Color(0xFF356C95),
        shape: BoxShape.circle,
      )),
    );
  }
}
