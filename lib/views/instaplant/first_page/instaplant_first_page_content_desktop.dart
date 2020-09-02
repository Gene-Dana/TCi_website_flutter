import 'package:flutter/material.dart';
import 'package:TCi/widgets/animated_logo.dart';

class InstaplantFirstPageContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      // alignment: Alignment.center,
      child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 900.0,
            height: 800.0,
            child: Image.asset("/instaplant-logo.png"),
          ),
        ],
      ),
    );
  }
}
