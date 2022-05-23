import 'package:flutter/material.dart';

const int desktopScreenSize = 1440;
const int mobileScreenSize = 550; /// I increased the size of the mobile view to 550 as to 375 stated so the desktop view  takes the view of the mobile when being shrinked

class ResponsiveWidget extends StatelessWidget {

  final Widget desktopScreen;
  final Widget mobileScreen;
  const ResponsiveWidget({Key? key,required this.mobileScreen,required this.desktopScreen,}) : super(key: key);

  static bool isMobileScreen(BuildContext context) =>
      MediaQuery.of(context).size.width <= mobileScreenSize;
  static bool isDesktopScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          double _width = constraints.maxWidth;
          if(_width <= mobileScreenSize){
            return mobileScreen;
          }
          return desktopScreen;
        }
    );
  }
}