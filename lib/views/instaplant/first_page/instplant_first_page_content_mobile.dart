import 'package:flutter/material.dart';
import 'package:TCi/widgets/animated_logo.dart';

class InstaplantFirstPageContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 250, width: 450, child: Image.asset("/instaplant-logo.png")),
        ],
      ),
    );
  }
}
