import 'package:flutter/material.dart';

class InstaplantMissionPageContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("/instaplant-leaf.png", scale: 3.5),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        .copyWith(fontSize: 24),
                    children: [
                      TextSpan(text: "An app to help you manage, tend to, and "),
                      TextSpan(
                        text: "grow",
                        style: Theme.of(context).textTheme.headline1.copyWith(
                          color: Color(0xFF1AB21A),
                          decoration: TextDecoration.underline,
                          fontSize: 24,
                        ),
                      ),
                      TextSpan(text: " your home garden")
                    ]),
              ),
            ),
          ],
        ));
  }
}
