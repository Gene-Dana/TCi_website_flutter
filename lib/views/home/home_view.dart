import 'package:flutter/material.dart';
import 'package:page_view_indicators/arrow_page_indicator.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:TCi/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:TCi/widgets/custom_drawer_guitart.dart';
import 'package:TCi/views/team_crushing_it/contact_page_content.dart';
import 'package:TCi/views/team_crushing_it/mission_page_content.dart';
import 'package:TCi/views/team_crushing_it/title_page_content.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController _controller = PageController(
    initialPage: 0,
  );
  final _currentPageNotifier = ValueNotifier<int>(0);
  // Variables for dots
  double position = 0;
  int total = 3;
  bool absorb = false;

  @override
  void initState() {
    _controller.addListener(() {
      //update for our dot position
      setState(() {
        position = _controller.page;
      });

      // print(_controller.page);

      // print(position);

      // Print once landed on new page
      // if the remainder is 0 when you divide by 1
      // AKA if a whole number
      // then update our position
      // if (_controller.page % 1 == 0) {
      //   print(_controller.page);
      //   if (_controller.page > 1) {
      //     absorb = false;
      //   } else {
      //     absorb = true;
      //   }
      // }
      // //print(_controller.position);
      // if (_controller.page == 0) {
      //   print('zero party!');
      // }
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: Colors.white,
        // If the screen size is mobile, then show the navigation button
        // floatingActionButton:
        //     sizingInformation.deviceScreenType == DeviceScreenType.mobile
        //         ? FloatingActionButton(
        //             onPressed: () => {print('yipppeeee!')},
        //             tooltip: 'Increment',
        //             child: Icon(Icons.add),
        //           )
        //         : null,
        body: Container(
          decoration: getBorder(),
          child: CustomGuitarDrawer(
            absorb: absorb,
            controller: _controller,
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: NavigationBar(total: total, position: position)),
                //Expanded to fill the area with a page view
                //Perhaps this will be replaced with Current page variable?
                //how do we do that? Make a giant if statement here connected to a global variable?
                //if current = home then do this...
                //Just wonder if there is a better way to do this
                //perhaps even incorporating PageViewBuilder
                Expanded(
                  flex: 7,
                  child: ArrowPageIndicator(
                    pageController: _controller,
                    isInside: true,
                    currentPageNotifier: _currentPageNotifier,
                    itemCount: 3,
                    iconSize: 60,
                    child: AbsorbPointer(
                      absorbing: absorb,
                      child: PageView(
                          onPageChanged: (int index) {
                            // print('page change');
                            _currentPageNotifier.value = index;
                          },
                          controller: _controller,
                          dragStartBehavior: DragStartBehavior.start,
                          children: [
                            TitlePageContent(),
                            MissionPageContent(),
                            GestureDetector(
                              onTap: () {
                                print('tapdown');
                              },
                              behavior: HitTestBehavior.translucent,
                              child: ContactPageContent(),
                            ),
                          ],
                          physics: NeverScrollableScrollPhysics()),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _pointerDown(PointerEvent details) {
    print('pointer down');
  }

  void _pointerUp(PointerEvent details) {
    print('pointer up');
  }

  BoxDecoration getBorder() {
    BoxDecoration border;

    int position2 = position.toInt();

    if (position2 == 0) {
      // print('position ==0');
      border = BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 10.0,
            color: Theme.of(context).accentColor,
          ),
          bottom: BorderSide(
            width: 10.0,
            color: Theme.of(context).accentColor,
          ),
          left: BorderSide(
            width: 10.0,
            color: Theme.of(context).accentColor,
          ),
        ),
      );
    } else if (position2 == 1) {
      // print('position ==1');
      border = BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 10.0,
            color: Theme.of(context).accentColor,
          ),
          bottom: BorderSide(
            width: 10.0,
            color: Theme.of(context).accentColor,
          ),
        ),
      );
    } else if (position2 == 2) {
      // print('position ==2');
      border = BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 10.0,
            color: Theme.of(context).accentColor,
          ),
          bottom: BorderSide(
            width: 10.0,
            color: Theme.of(context).accentColor,
          ),
          right: BorderSide(
            width: 10.0,
            color: Theme.of(context).accentColor,
          ),
        ),
      );
    }

    return border;
  }
}
