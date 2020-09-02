import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:TCi/widgets/animated_logo.dart';

class ContactPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ContactPageContentMobile(),
      desktop: ContactPageContentDesktop(),
    );
  }
}

class ContactPageContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TCi Logo in circle
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  Image.asset(
                    "/Icon-Large.png",
                    height: 145,
                  )
                ],
              ),
              // Text
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  "Our designs are all open-sourced and shared among our social media. Feel free to subscribe, follow and chat with us there!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w300,
                      fontSize: 15),
                ),
              ),
              // Social bar
              Container(
                height: 120,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColorDark,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                              "https://www.youtube.com/channel/UCv6eyac-WM6TJUvGrk0eRMA");
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 50,
                                  child: Image.asset("/youtube-logo.png")),
                            ),
                            Text("subscribe",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w100,
                                    fontSize: 15))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL("https://twitter.com/TeamCrushing_it");
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 50,
                                  child: Image.asset("/twitter-logo.png")),
                            ),
                            Text("follow",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w100,
                                    fontSize: 15))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          print('tapped discord');
                          _launchURL("https://discord.gg/SQUgRk8");
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 50,
                                  child: Image.asset("/discord-logo.png")),
                            ),
                            Text("chat",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w100,
                                    fontSize: 15))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Theme.of(context).accentColor,
                      width: 30,
                      height: 180,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ContactPageContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
              Image.asset(
                "/Icon-Large.png",
                height: 100,
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(40),
            child: Text(
              "Our designs are all open-sourced and shared among our social media. Feel free to subscribe, follow and chat with us there!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w300,
                  fontSize: 21),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryColorDark,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      _launchURL(
                          "https://www.youtube.com/channel/UCv6eyac-WM6TJUvGrk0eRMA");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "/youtube-logo.png",
                            scale: 1.8,
                          ),
                        ),
                        Text("subscribe",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w100,
                                fontSize: 15))
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL("https://twitter.com/TeamCrushing_it");
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "/twitter-logo.png",
                          scale: 1.8,
                        ),
                      ),
                      Text("follow",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w100,
                              fontSize: 15))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL("https://discord.gg/SQUgRk8");
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "/discord-logo.png",
                          scale: 1.8,
                        ),
                      ),
                      Text("chat",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w100,
                              fontSize: 15))
                    ],
                  ),
                ),
                Container(
                  color: Theme.of(context).accentColor,
                  width: 30,
                  height: 120,
                ),
              ],
            ),
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
