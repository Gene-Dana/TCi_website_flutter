import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:TCi/widgets/animated_logo.dart';


class InstaplantContactPageContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(3), child: Image.asset("/placeholder.png", scale: 1.5)),
              Padding(padding: EdgeInsets.all(3), child: Image.asset("/placeholder.png", scale: 1.5)),
              Padding(padding: EdgeInsets.all(3), child: Image.asset("/placeholder.png", scale: 1.5)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Download now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w300,
                        fontSize: 42),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 55.0, horizontal: 8),
                    child: Image.asset("/google-play-logo.png", scale: 9.6),
                  ),
                  Image.asset("/app-store-logo.png", scale: 4.3),
                ],
              )
            ],
          ),
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
