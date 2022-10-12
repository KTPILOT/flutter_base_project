import 'package:base_project_flutter/base/utils/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  // final introKey = GlobalKey<IntroductionScreenState>();

  // void _onIntroEnd(context) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(builder: (_) => SignInScreen()),
  //   );
  // }
  PageDecoration pageDecoration = const PageDecoration(
    titleTextStyle:
    TextStyle(color: Colors.brown, fontSize: 35, letterSpacing: 0),
    bodyTextStyle:
    TextStyle(letterSpacing: 0, fontSize: 15, color: Colors.white),
    pageColor: Colors.white,
    imagePadding: EdgeInsets.zero,
    contentMargin: EdgeInsets.zero,
    imageFlex: 2,
    imageAlignment: Alignment.center,
    titlePadding: EdgeInsets.zero,
    bodyAlignment: Alignment.centerLeft,
  );
  List<PageViewModel> pages =
  [
    PageViewModel(
      title: 'protect yourself',
      image: Image.asset('assets/img.png'),
      // titleWidget: Container(
      //   child: Text('protect yourself', style: TextStyle(color: Colors.brown),),
      // ),
      body: 'Protect yourself by securely documenting your interaction',
      // bodyWidget: Container(
      //   child: Text('Protect yourself by securely documenting your interaction',
      //   style: TextStyle(color: Colors.black),),
      // ),
      // decoration: pageDecoration,
    ),
    PageViewModel(
      image: Image.asset('assets/img.png'),
      title: 'protect yourself',
      // titleWidget: Container(
      //   child: Text('protect yourself', style: TextStyle(color: Colors.brown),),
      // ),
      body: 'Protect yourself by securely documenting your interaction',
      // bodyWidget: Container(
      //   child: Text('Protect yourself by securely documenting your interaction',
      //     style: TextStyle(color: Colors.black),),
      // ),
      // decoration: pageDecoration,
    ),
  ];
  @override
  Widget build(BuildContext context) {






    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("demo"),
        ),
        body: IntroductionScreen(
          globalBackgroundColor: ColorRes.white,
          pages: pages,
          showSkipButton: true,
          showNextButton: true,
          skip: Text("skip",
            style: TextStyle(color: Colors.brown),
          ),
          next: Text('done',
            style: TextStyle(
              color: Colors.brown,
            ),
          ),
        ),
      ),
    );
  }
}
