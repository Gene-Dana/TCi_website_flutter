import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TitlePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: TitlePageContentMobile(),
      desktop: TitlePageContentDesktop(),
    );
  }
}

class TitlePageContentDesktop extends StatelessWidget {
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
            width: 500.0,
            height: 500.0,
            child: Image.asset("/critical_care_icon.png"),
          )
        ],
      ),
    );
  }
}

class TitlePageContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
              height: 250,
              width: 250,
              child: Image.asset("/critical_care_icon.png")),
        ],
      ),
    );
  }
}
