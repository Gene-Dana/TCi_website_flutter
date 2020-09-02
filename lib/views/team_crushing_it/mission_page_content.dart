import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:TCi/widgets/animated_logo.dart';

class MissionPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MissionPageContentMobile(),
      desktop: MissionPageContentDesktop(),
    );
  }
}

class MissionPageContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 60),
      alignment: Alignment.center,
      child: Row(
        children: [
          SizedBox(
            width: 200.0,
            height: 300.0,
            child: AnimatedLogo(),
          ),
          Expanded(
            flex: 5,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(fontSize: 45),
                  children: [
                    TextSpan(text: "A research team whose mission is to "),
                    TextSpan(
                        text: "empower",
                        style: Theme.of(context).textTheme.headline1.copyWith(
                              color: Theme.of(context).accentColor,
                              decoration: TextDecoration.underline,
                              fontSize: 45,
                            )),
                    TextSpan(text: " consumers with clear and meaningful data")
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class MissionPageContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("/TCi-Square.png", scale: 1.3),
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
                      TextSpan(text: "A research team whose mission is to "),
                      TextSpan(
                          text: "empower",
                          style: Theme.of(context).textTheme.headline1.copyWith(
                                color: Theme.of(context).accentColor,
                                decoration: TextDecoration.underline,
                                fontSize: 24,
                              )),
                      TextSpan(
                          text: " consumers with clear and meaningful data")
                    ]),
              ),
            ),
          ],
        ));
  }
}
