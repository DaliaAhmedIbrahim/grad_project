import 'package:flutter/material.dart';
import 'package:grad_project/layout/home_layout.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../shared/components/bottom_widget.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Welcome to WorkSpace',
          body: 'we\'re here to equip you with the best workspaces.',
          image: buildImage('assets/images/space.jpg'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Desks,Offices Or Meeting Rooms',
          body: 'A desk is shared space, a meeting room or a fully private office; it \' s your call ',
          image: buildImage('assets/images/workspace.jpg'),
          decoration: getPageDecoration(),
        ),

        // PageViewModel(
        //   title: 'Simple UI',
        //   body: 'For enhanced reading experience',
        //   image: buildImage('assets/images/workspace.jpg'),
        //   decoration: getPageDecoration(),
        // ),

        PageViewModel(
          title: 'Flexible Offices, No Commitment',
          body: 'Start your journey',
          footer: ButtonWidget(
            text: 'Start', onClicked: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=> HomeLayoutScreen())
            );
          },
          ),
          image: buildImage('assets/images/5469.jpg'),
          decoration: getPageDecoration(),
        ),
      ],
      done: Text('Continue', style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () => goToHome(context),
      showSkipButton: true,
      skip: Text('Skip'),
      onSkip: () => goToHome(context),
      next: Icon(Icons.arrow_forward),
      dotsDecorator: getDotDecoration(),
      onChange: (index) => print('Page $index selected'),
      globalBackgroundColor: Theme.of(context).primaryColor,
      skipFlex: 0,
      nextFlex: 0,
      // isProgressTap: false,
      // isProgress: false,
      // showNextButton: false,
      // freeze: true,
      // animationDuration: 1000,
    ),
  );

  void goToHome(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => HomeLayoutScreen()),
  );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path,width:500 ,));

  DotsDecorator getDotDecoration() => DotsDecorator(
    color: Color(0xFFBDBDBD),
    //activeColor: Colors.orange,
    size: Size(10, 10),
    activeSize: Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 20),
    descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
    imagePadding: EdgeInsets.all(24),
    pageColor: Colors.white,
  );
}
