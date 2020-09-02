import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'navigation_bar_tablet_desktop.dart';
import 'navigation_bar_mobile.dart';

class NavigationBar extends StatelessWidget {
  final int total;
  final double position;

  const NavigationBar({Key key, this.total, this.position}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(total: total, position: position),
      tablet: NavigationBarTabletDesktop(total: total, position: position),
    );
  }
}
