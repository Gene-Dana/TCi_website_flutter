import 'package:flutter/material.dart';
import 'package:TCi/widgets/animated_logo.dart';

class InstaplantMissionPageContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 60),
      alignment: Alignment.center,
      child: Row(
        children: [
          SizedBox(
            width: 300.0,
            height: 300.0,
            child: Image.asset("/instaplant-leaf.png"),
          ),
          Expanded(
            flex: 5,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(style: Theme.of(context).textTheme.headline1.copyWith(fontSize: 60), children: [
                TextSpan(text: "An app to help you manage, tend to, and "),
                TextSpan(
                  text: "grow",
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        color: Color(0xFF1AB21A),
                        decoration: TextDecoration.underline,
                        fontSize: 60,
                      ),
                ),
                TextSpan(text: " your home garden")
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
