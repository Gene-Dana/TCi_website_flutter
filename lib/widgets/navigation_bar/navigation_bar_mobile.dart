import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class NavigationBarMobile extends StatelessWidget {
  final int total;
  final double position;

  const NavigationBarMobile({Key key, this.total, this.position})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    const decorator = DotsDecorator(
      activeColor: Color(0xFFEB6A4A),
      activeSize: Size.fromRadius(10.0),
      activeShape: CircleBorder(),
    );
    return Container(
      margin: new EdgeInsets.all(20.0),
      height: 100,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {},
          // ),
          Column(
            children: [
              // One day this will be a variable
              Image.asset("/home-button.png"),
              DotsIndicator(
                dotsCount: total,
                position: position,
                axis: Axis.horizontal,
                decorator: decorator,
              ),
            ],
          )
        ],
      ),
    );
  }
}
