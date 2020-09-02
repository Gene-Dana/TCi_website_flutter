import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InstaplantContactPageContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(3), child: Image.asset("/placeholder.png", scale: 3.5)),
              Padding(padding: EdgeInsets.all(3), child: Image.asset("/placeholder.png", scale: 3.5)),
              Padding(padding: EdgeInsets.all(3), child: Image.asset("/placeholder.png", scale: 3.5)),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(40),
            child: Text(
              "Download now",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w300,
                  fontSize: 24),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("/google-play-logo.png", scale: 9.6),
              Image.asset("/app-store-logo.png", scale: 4.3),
            ],
          )
        ],
      ),
    );
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Could not launch $url');
  }
}
