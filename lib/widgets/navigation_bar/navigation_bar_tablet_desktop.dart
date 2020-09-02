import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  final int total;
  final double position;

  const NavigationBarTabletDesktop({Key key, this.total, this.position})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    const decorator = DotsDecorator(
      activeColor: Color(0xFFEB6A4A),
      activeSize: Size.fromRadius(10.0),
      activeShape: CircleBorder(),
    );
    return Container(
      // padding: new EdgeInsets.all(10.0),
      margin: new EdgeInsets.all(40.0),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
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
          ),

          // Image.asset("/bdbd-button.png"),
          // Image.asset("/relive-button.png"),
          // // Image.asset("/instaplant-button.png"),
          // Image.asset("/ccare-button.png"),
          // Image.asset("/report-button.png"),
        ],
      ),
    );
  }
}
